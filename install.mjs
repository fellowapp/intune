import { createWriteStream } from 'fs';
import fetch from 'node-fetch';
import StreamZip from 'node-stream-zip';

const version = "19.7.8";

const url = `https://github.com/microsoftconnect/ms-intune-app-sdk-ios/archive/refs/tags/${version}.zip`;

await fetch(url).then(async res => {
  res.body.pipe(createWriteStream('main.zip'));
  // wait for stream write to complete
  await new Promise(resolve => {
      res.body.on('end', resolve);
  });
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
});
