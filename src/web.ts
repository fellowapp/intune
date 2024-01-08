import { WebPlugin } from '@capacitor/core';

import type { IntunePlugin } from './definitions';

export class IntuneWeb extends WebPlugin implements IntunePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
