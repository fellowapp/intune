import Foundation
import IntuneMAMSwift

class ComplianceDelegate: NSObject, IntuneMAMComplianceDelegate {
    func identity(_ identity: String, hasComplianceStatus status: IntuneMAMComplianceStatus, withErrorMessage errMsg: String, andErrorTitle errTitle: String) {
        switch status {
        case .compliant:
            print("VT: COMPLIANT")
            break
            //Handle successful compliance
        case .notCompliant, .networkFailure,.serviceFailure,.userCancelled:
            DispatchQueue.main.async {
                let alert = UIAlertController(title: errTitle, message: errMsg, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    exit(0)
                }))
                // self.present(alert, animated: true, completion: nil)
            }
            print("VT: NOT COMPLIANT")
            break;
        case .interactionRequired:
            IntuneMAMComplianceManager.instance().remediateCompliance(forIdentity: identity, silent: false)
            print("VT: REMEDIATE")
            break;
        }
    }
}
