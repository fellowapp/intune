import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IntunePlugin)
public class IntunePlugin: CAPPlugin {
    private let implementation = Intune()

    @objc func loginAndEnrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        implementation.loginAndEnrollAccount(email)
        call.resolve()
    }

    @objc func registerAndEnrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        implementation.registerAndEnrollAccount(email)
        call.resolve()
    }

    @objc func deRegisterAndUnenrollAccount(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        let withWipe = call.getBool("withWipe") ?? true
        // TODO: Error instead of defaulting to true for withWipe
        implementation.deRegisterAndUnenrollAccount(email, withWipe: withWipe)
        call.resolve()
    }

    @objc func deRegisterAndUnenrollAccountId(_ call: CAPPluginCall) {
        let accountId = call.getString("accountId") ?? ""
        let withWipe = call.getBool("withWipe") ?? true
        // TODO: Error instead of defaulting to true for withWipe
        implementation.deRegisterAndUnenrollAccountId(accountId, withWipe: withWipe)
        call.resolve()
    }

    @objc func openIntuneConsole(_ call: CAPPluginCall) {
        implementation.openIntuneConsole()
        call.resolve()
    }

    @objc func getEnrolledAccount(_ call: CAPPluginCall) {
        call.resolve([
            "account": implementation.getEnrolledAccount()
        ])
    }

    @objc func getEnrolledAccountId(_ call: CAPPluginCall) {
        call.resolve([
            "accountId": implementation.getEnrolledAccountId()
        ])
    }

    @objc func getEnrolledAccountIds(_ call: CAPPluginCall) {
        call.resolve([
            "accountIds": implementation.getEnrolledAccountIds()
        ])
    }
}
