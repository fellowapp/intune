import { registerPlugin } from '@capacitor/core';
const Intune = registerPlugin('@fellow/Intune', {
    web: () => import('./web').then(m => new m.IntuneWeb()),
});
export * from './definitions';
export { Intune };
//# sourceMappingURL=index.js.map