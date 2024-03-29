var capacitorIntune = (function (exports, core) {
    'use strict';

    const Intune = core.registerPlugin('@fellow/Intune', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.IntuneWeb()),
    });

    class IntuneWeb extends core.WebPlugin {
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
            return { accountIds: [] };
        }
        async isSupportedPlatform() {
            return { supported: false };
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        IntuneWeb: IntuneWeb
    });

    exports.Intune = Intune;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
