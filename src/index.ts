import { registerPlugin } from '@capacitor/core';

import type { IntunePlugin } from './definitions';

const Intune = registerPlugin<IntunePlugin>('@fellow/Intune', {
  web: () => import('./web').then(m => new m.IntuneWeb()),
});

export * from './definitions';
export { Intune };
