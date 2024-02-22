import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IntunePlugin)
public class IntunePlugin: CAPPlugin {
    private var implementation: Intune?
    
    override init() {
        super.init()
        implementation = Intune(plugin: self)
    }

    @objc func loginAndEnrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        implementation!.loginAndEnrollAccount(email)
        call.resolve()
    }

    @objc func registerAndEnrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        implementation!.registerAndEnrollAccount(email)
        call.resolve()
    }

    @objc func deRegisterAndUnenrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        let withWipe = call.getBool("withWipe") ?? true
        // TODO: Error instead of defaulting to true for withWipe
        implementation!.deRegisterAndUnenrollAccount(email, withWipe: withWipe)
        call.resolve()
    }

    @objc func deRegisterAndUnenrollAccountId(_ call: CAPPluginCall) {
        let accountId = call.getString("accountId") ?? ""
        let withWipe = call.getBool("withWipe") ?? true
        // TODO: Error instead of defaulting to true for withWipe
        implementation!.deRegisterAndUnenrollAccountId(accountId, withWipe: withWipe)
        call.resolve()
    }

    @objc func openIntuneConsole(_ call: CAPPluginCall) {
        implementation!.openIntuneConsole()
        call.resolve()
    }

    @objc func getEnrolledAccount(_ call: CAPPluginCall) {
        call.resolve([
            "account": implementation!.getEnrolledAccount()
        ])
    }

    @objc func getEnrolledAccountId(_ call: CAPPluginCall) {
        call.resolve([
            "accountId": implementation!.getEnrolledAccountId()
        ])
    }

    @objc func getEnrolledAccountIds(_ call: CAPPluginCall) {
        call.resolve([
            "accountIds": implementation!.getEnrolledAccountIds()
        ])
    }

    @objc func isSupportedPlatform(_ call: CAPPluginCall) {
        call.resolve([ "supported": true ])
    }
    
    func hasBeenUnenrolled() {
        guard let cookieStore = self.webView?.configuration.websiteDataStore.httpCookieStore else {
            print("Error getting webview to handle un-enroll")
            return;
        }
        cookieStore.getAllCookies { cookies in
            for cookie in cookies {
                cookieStore.delete(cookie)
            }
        }
    }
}
