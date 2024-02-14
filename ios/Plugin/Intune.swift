import Foundation
import IntuneMAMSwift

public func test(plugin: IntunePlugin) {
    let enrollmentDelegate = EnrollmentDelegateClass.init(plugin: plugin)
    IntuneMAMEnrollmentManager.instance().delegate = enrollmentDelegate

    IntuneMAMEnrollmentManager.instance().loginAndEnrollAccount(nil)
}

@objc public class Intune: NSObject {
    private var enrollmentManagerInstance = IntuneMAMEnrollmentManager.instance()

    init(plugin: IntunePlugin) {
        let enrollmentDelegate = EnrollmentDelegateClass.init(plugin: plugin)
        enrollmentManagerInstance.delegate = enrollmentDelegate
    }

    @objc public func loginAndEnrollAccount(_ email: String) {
        enrollmentManagerInstance.loginAndEnrollAccount(email)
    }

    @objc public func registerAndEnrollAccount(_ email: String) {
        enrollmentManagerInstance.registerAndEnrollAccount(email)
    }

    @objc public func deRegisterAndUnenrollAccount(_ email: String, withWipe: Bool) {
        enrollmentManagerInstance.deRegisterAndUnenrollAccount(email, withWipe: withWipe)
    }

    @objc public func deRegisterAndUnenrollAccountId(_ id: String, withWipe: Bool) {
        enrollmentManagerInstance.deRegisterAndUnenrollAccountId(id, withWipe: withWipe)
    }

    @objc public func getSetting(_ key: String) -> Bool {
        return false; //
        // IntuneMAMSwift.UserDefaults.instance().objectForKey(key)
    }

    @objc public func openIntuneConsole() -> Void {
        IntuneMAMDiagnosticConsole.display()
    }

    @objc public func getEnrolledAccount() -> String? {
        return IntuneMAMEnrollmentManager.instance().enrolledAccount()
    }

    @objc public func getEnrolledAccountId() -> String? {
        return IntuneMAMEnrollmentManager.instance().enrolledAccountId()
    }

    @objc public func getEnrolledAccountIds() -> [String] {
        return IntuneMAMEnrollmentManager.instance().enrolledAccountIds()
    }
}
