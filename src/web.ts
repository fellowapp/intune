import { WebPlugin } from '@capacitor/core';

import type { IntunePlugin } from './definitions';

export class IntuneWeb extends WebPlugin implements IntunePlugin {
  async loginAndEnrollAccount(options: { email: string }): Promise<void> {
    console.log('WOOPS, web enroll called with', options);
    this.unimplemented('UNIMPLEMENTED');
  }

  async registerAndEnrollAccount(options: { email: string }): Promise<void> {
    console.log('WOOPS, web enroll called with', options);
    this.unimplemented('UNIMPLEMENTED');
  }

  async deRegisterAndUnenrollAccount(options: { email: string, withWipe: boolean }): Promise<void> {
    console.log('WOOPS, web deregister and unenroll email called with', options);
    this.unimplemented('UNIMPLEMENTED');
  }

  async deRegisterAndUnenrollAccountId(options: { accountId: string, withWipe: boolean }): Promise<void> {
    console.log('WOOPS, web deregister and unenroll account id called with', options);
    this.unimplemented('UNIMPLEMENTED');
  }

  async openIntuneConsole(): Promise<void> {
    console.log('WOOPS, web openIntuneConsole called');
    this.unimplemented('UNIMPLEMENTED');
  }

  async getEnrolledAccount(): Promise<{ account?: string }> {
    this.unimplemented('UNIMPLEMENTED');
    return {};
  }

  async getEnrolledAccountId(): Promise<{ accountId?: string }> {
    this.unimplemented('UNIMPLEMENTED');
    return {};
  }

  async getEnrolledAccountIds(): Promise<{ accountIds: string[] }> {
    this.unimplemented('UNIMPLEMENTED');
    return { accountIds: [] };
  }

  async isSupportedPlatform(): Promise<{ supported: boolean }> {
    return { supported: false };
  }
}
