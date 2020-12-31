//
//  FeetAppConstants.swift

import Foundation
import UIKit
//import AnyFormatKit

enum FleetAppConstants {
    
//    static let AppDel = UIApplication.shared.delegate as! AppDelegate
    static let SystemSize = UIScreen.main.bounds.size
    static let MainBundle = Bundle.main
    
    static let kBundleShortVersionKey = "CFBundleShortVersionString"
 
   // static let GSInstance = FleetGlobalStorage.instance

    /*~~~~~ signal R status methods ~~~~~*/
    static let srDriverAvailabilityForOrder = "DriverAvailabilityForOrder"
    static let srRequestToAcceptOrder = "RequestToAcceptOrder"
    static let srUpdateOrderStatus = "UpdateOrderStatus"
    static let srDeliveryCancelledByDispatcher = "DeliveryCancelledByDispatcher"
    static let srManageAppAnalytics = "ManageAppAnalytics"
    static let srOrderAssignedByAdmin = "OrderAssignedByAdmin"

    static let Timer120Sec : TimeInterval = 120
    static let Timer30Sec : TimeInterval = 30

    static let MinDriverLocationDistance : Double = 100
    static let DriverWaitingTime : Double = 300

    static let UpdateTimerInterval : Double = 0.10
    
    static let AutoReject15Sec : CGFloat = 15
    static let AutoReject2Sec : CGFloat = 2
    static let AutoReject3Sec : CGFloat = 3
    static let AutoReject5Sec : CGFloat = 5

    static let GrippyTopViewHeight : CGFloat = 68

    static let GeoFenceRadiusLimit = 100

}

