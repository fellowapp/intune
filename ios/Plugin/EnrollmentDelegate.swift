import IntuneMAMSwift


class EnrollmentDelegateClass: NSObject, IntuneMAMEnrollmentDelegate {
    private var plugin: IntunePlugin?

    init(plugin: IntunePlugin) {
        super.init()
        self.plugin = plugin
    }

    func enrollmentRequest(with status: IntuneMAMEnrollmentStatus) {
        if status.didSucceed{
            print("Enrollment successful")
            print(IntuneMAMEnrollmentManager.instance().enrolledAccount())
            print(IntuneMAMEnrollmentManager.instance().mdmEnrolledAccount())
            // IntuneMAMAppConfigManager.instance().appConfig(forAccountId: <#T##String?#>)
        } else if IntuneMAMEnrollmentStatusCode.loginCanceled != status.statusCode {
            print("Enrollment result for identity \(status.identity) with code \(status.statusCode)")
            print("Debug message: \(String(describing: status.errorString))")
            print(IntuneMAMEnrollmentManager.instance().enrolledAccount())
            print(IntuneMAMEnrollmentManager.instance().mdmEnrolledAccount())
        }
        self.plugin!.notifyListeners("enrollmentResult", data: [
            "identity": status.identity,
            "statusCode": status.statusCode.rawValue,
            "didSucceed": status.didSucceed,
            "errorString": status.errorString,
        ])
    }

    func unenrollRequest(with status: IntuneMAMEnrollmentStatus) {
        if status.didSucceed != true {
            print("Unenrollment failed for identity \(status.identity) with code \(status.statusCode)")
            print("Debug message: \(String(describing: status.errorString))")
        }
    }
}
