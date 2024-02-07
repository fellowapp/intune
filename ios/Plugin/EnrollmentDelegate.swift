import IntuneMAMSwift


class EnrollmentDelegateClass: NSObject, IntuneMAMEnrollmentDelegate {

    override init() {
        super.init()
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
    }

    func unenrollRequest(with status: IntuneMAMEnrollmentStatus) {
        if status.didSucceed != true {
            print("Unenrollment failed for identity \(status.identity) with code \(status.statusCode)")
            print("Debug message: \(String(describing: status.errorString))")
        }
    }
}
