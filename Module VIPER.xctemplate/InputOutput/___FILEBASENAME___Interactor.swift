import Foundation
import LegacyServices

class ___VARIABLE_productName:identifier___InteractorInput: ___VARIABLE_productName:identifier___InteractorProtocol {
    private let serviceContext: LegacyFacadeProtocol?
    private let interactorOutput: YXServiceDelegate?

    public init(serviceContext: LegacyFacadeProtocol?,
                interactorOutput: YXServiceDelegate?) {
        self.serviceContext = serviceContext
        self.interactorOutput = interactorOutput
    }

    func perform() {}
}

class ___VARIABLE_productName:identifier___InteractorOutput: NSObject, YXServiceDelegate {
    weak var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

    func didStart(_ operation: KServiceOperationType) {}

    func didEnd(_ operation: KServiceOperationType, withResult result: Any!, error: Error!) {
        guard error == nil else {
            presenter?.notify(error)
            return
        }
    }
}
