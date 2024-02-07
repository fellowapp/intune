import { WebPlugin } from '@capacitor/core';
export class IntuneWeb extends WebPlugin {
    async loginAndEnrollAccount(options) {
        console.log('WOOPS, web enroll called with', options);
        this.unimplemented('UNIMPLEMENTED');
    }
    async registerAndEnrollAccount(options) {
        console.log('WOOPS, web enroll called with', options);
        this.unimplemented('UNIMPLEMENTED');
    }
    async deRegisterAndUnenrollAccount(options) {
        console.log('WOOPS, web deregister and unenroll email called with', options);
        this.unimplemented('UNIMPLEMENTED');
    }
    async deRegisterAndUnenrollAccountId(options) {
        console.log('WOOPS, web deregister and unenroll account id called with', options);
        this.unimplemented('UNIMPLEMENTED');
    }
    async openIntuneConsole() {
        console.log('WOOPS, web openIntuneConsole called');
        this.unimplemented('UNIMPLEMENTED');
    }
    async getEnrolledAccount() {
        this.unimplemented('UNIMPLEMENTED');
        return {};
    }
    async getEnrolledAccountId() {
        this.unimplemented('UNIMPLEMENTED');
        return {};
    }
    async getEnrolledAccountIds() {
        this.unimplemented('UNIMPLEMENTED');
        return {};
    }
}
//# sourceMappingURL=web.js.map