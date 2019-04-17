import Foundation

public class ___VARIABLE_productName:identifier___Router {
    private let viewControllerIdentifier = ""

    private var presenter: ___VARIABLE_productName:identifier___Presenter?
    private var view: ___VARIABLE_productName:identifier___ViewController?

    private let workflowContext: WorkflowContextProtocol?
    private let sessionContext: SessionContextProtocol?
    private let errorContext: ErrorContextProtocol?
    private let trackingContext: TrackingContextProtocol.Type?
    private let serviceContext: LegacyFacadeProtocol?
    private let debugContext: DebugProtocol?
    private let loggerContext: LoggerProtocol?
    private let layoutContext: LayoutProtocol?
    private let labelContext: LabelContextProtocol?
    private let downloadContext: DownloadServiceContextProtocol?
    private let userDefaultsContext: UserDefaultsContextProtocol?
    private let keyboardContext: KeyboardAccessoryProtocol?
    private let optimizelyContext: OptimizelyContextProtocol?
    private let notificationContext: NotificationContextProtocol?

    public init(workflowContext: WorkflowContextProtocol?,
                sessionContext: SessionContextProtocol?,
                errorContext: ErrorContextProtocol?,
                trackingContext: TrackingContextProtocol.Type?,
                serviceContext: LegacyFacadeProtocol?,
                debugContext: DebugProtocol?,
                loggerContext: LoggerProtocol?,
                layoutContext: LayoutProtocol?,
                labelContext: LabelContextProtocol?,
                downloadContext: DownloadServiceContextProtocol?,
                userDefaultsContext: UserDefaultsContextProtocol?,
                keyboardContext: KeyboardAccessoryProtocol?,
                optimizelyContext: OptimizelyContextProtocol?,
                notificationContext: NotificationContextProtocol?) {
        self.workflowContext = workflowContext
        self.sessionContext = sessionContext
        self.errorContext = errorContext
        self.trackingContext = trackingContext
        self.serviceContext = serviceContext
        self.debugContext = debugContext
        self.loggerContext = loggerContext
        self.layoutContext = layoutContext
        self.labelContext = labelContext
        self.downloadContext = downloadContext
        self.userDefaultsContext = userDefaultsContext
        self.keyboardContext = keyboardContext
        self.optimizelyContext = optimizelyContext
        self.notificationContext = notificationContext
    }

    public func load(_ storyboard: UIStoryboard) -> UIViewController {
        view = storyboard.instantiateController(type: ___VARIABLE_productName:identifier___ViewController.self,
                                                identifier: viewControllerIdentifier,
                                                workflow: workflowContext,
                                                sessionContext: sessionContext,
                                                errorContext: errorContext,
                                                trackingContext: trackingContext,
                                                serviceContext: serviceContext,
                                                debugContext: debugContext,
                                                loggerContext: loggerContext,
                                                layoutContext: layoutContext,
                                                labelContext: labelContext,
                                                downloadContext: downloadContext,
                                                userDefaultsContext: userDefaultsContext,
                                                keyboardContext: keyboardContext,
                                                optimizelyContext: optimizelyContext,
                                                notificationContext: notificationContext)


        let interactor = ___VARIABLE_productName:identifier___Interactor()

        presenter = ___VARIABLE_productName:identifier___Presenter(view: view, interactor: interactor)

        interactor.presenter = presenter
        view?.presenter = presenter

        return view ?? UIViewController()
    }
}
