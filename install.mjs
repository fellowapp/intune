import { createWriteStream } from 'fs';
import { pipeline } from 'stream/promises';
import fetch from 'node-fetch';
import StreamZip from 'node-stream-zip';

const version = "19.7.8";

const url = `https://github.com/microsoftconnect/ms-intune-app-sdk-ios/archive/refs/tags/${version}.zip`;

const res = await fetch(url);
if (!res.ok) throw new Error(`Failed to fetch ${url}: ${res.status} ${res.statusText}`);

// Convert WHATWG stream to Node stream and pipe reliably
await pipeline(res.body, createWriteStream('main.zip'));

const zip = new StreamZip.async({ file: 'main.zip' });
// console.log(Object.values((await zip.entries())).filter(entry => entry.name.includes('IntuneMAMConfigurator')));
await zip.extract(
  `ms-intune-app-sdk-ios-${version}/IntuneMAMConfigurator`,
  './ios/IntuneMAMConfigurator',
);
await zip.extract(
  `ms-intune-app-sdk-ios-${version}/IntuneMAMSwift.xcframework`,
  './ios/IntuneMAMSwift.xcframework',
);
await zip.extract(
  `ms-intune-app-sdk-ios-${version}/IntuneMAMSwiftStub.xcframework`,
  './ios/IntuneMAMSwiftStub.xcframework',
);
await zip.extract(
  `ms-intune-app-sdk-ios-${version}/IntuneMAMResources.bundle`,
  './ios/IntuneMAMResources.bundle',
);
