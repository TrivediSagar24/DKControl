//
//  FleetAlmostVC1.swift
//  Gomotestlib
//
//  Created by Trivedi Sagar on 12/29/20.
//

import UIKit

class FleetAlmostVC1: UIViewController {
    
    // MARK: - define IBOutlet
    
    @IBOutlet var viewBack: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSeparator: UILabel!
    
    @IBOutlet weak var viewAction: UIView!

    @IBOutlet weak var lblExpand: UILabel!

    @IBOutlet var lblAlmostThere: [UILabel]!
    @IBOutlet var layOutConst: [NSLayoutConstraint]!

    @IBOutlet weak var btnMessage: UIButton!

    @IBOutlet weak var btnConfirmDelivery: UIButton!
    @IBOutlet weak var btnNeedHelp: UIButton!


    // MARK: - constants & variables
    ///var deliveryOrderModel : DeliveryOrderModel!
    var dropOffIDs = [UInt]()
    var actionViewHeight : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.setUpLayout()
        self.setThemeBasedView()
    }
    
    // MARK: - functions
    func setUpLayout()  {
        self.lblExpand.layer.cornerRadius = self.lblExpand.frame.size.height/2
        
        if  !self.dropOffIDs.isEmpty {
            self.btnNeedHelp.isHidden = true
        }
        
        self.actionViewHeight = self.viewAction.frame.size.height + FleetAppConstants.GrippyTopViewHeight
    }
    
    func setThemeBasedView(){
//        if FleetAppConstants.GSInstance.isNightModeView{
//            viewBack.backgroundColor = FleetAppColors.ViewBackgroundDarkModeColor
//            lblTitle.textColor = .white
//            lblSeparator.backgroundColor = .white
//            viewAction.backgroundColor = FleetAppColors.ViewBackgroundDarkModeColor
//            btnNeedHelp.backgroundColor = .clear
//            btnConfirmDelivery.backgroundColor = FleetAppColors.GreenColor
//        }else{
//            viewBack.backgroundColor = .white
//            lblTitle.textColor = .black
//            lblSeparator.backgroundColor = .black
//            viewAction.backgroundColor = .white
//            btnNeedHelp.backgroundColor = .white
//            btnConfirmDelivery.backgroundColor = FleetAppColors.ThemeColor
//
//        }
        self.setUpTexts()
    }
    
    func setUpTexts() {
        
            var arryTexts = ["", "", "", ""]
            var secondTopConst : CGFloat = 0
        self.lblTitle.text = "Almost to Pickup!"
           /* if self.deliveryOrderModel.UpcomingOrderLocation.DeliveryStatus == DeliveryOrderStatus.Assigned.rawValue || !self.dropOffIDs.isEmpty {
                arryTexts = [self.deliveryOrderModel.UpcomingOrderLocation.Pickup.name, self.deliveryOrderModel.UpcomingOrderLocation.Pickup.fullAddress, "", ""]
                
                self.lblTitle.text = !self.dropOffIDs.isEmpty ? "Almost to Return!" : "Almost to Pickup!"
            }
            else if self.deliveryOrderModel.UpcomingOrderLocation.DeliveryStatus == DeliveryOrderStatus.Transit.rawValue {
                
                self.lblTitle.text = "Almost to Dropoff!"

                secondTopConst = 20
                
                let currentDropOffModel = self.deliveryOrderModel.UpcomingOrderLocation.currentDropOffModel()
                if currentDropOffModel != nil {
                    
                    let notesFromCustValue = currentDropOffModel!.instructions
                    let notesFromCust = notesFromCustValue.isEmpty ? "" : "Notes From Customer:"

                    arryTexts = [currentDropOffModel!.name, currentDropOffModel!.fullAddress, notesFromCust, notesFromCustValue]
                }
            }*/
         
            for (index, element) in lblAlmostThere.enumerated() {
                if index % 2 == 0{
                   // element.textColor = FleetAppConstants.GSInstance.isNightModeView == true ? .white : FleetAppColors.BrownColor
                }else{
                  //  element.textColor = FleetAppConstants.GSInstance.isNightModeView == true ? .white : FleetAppColors.BorderColor
                }
                element.text = arryTexts[index]
            }
            
            /*~~~~~ set up top constant ~~~~~*/
            let arryConstant : [CGFloat] = [secondTopConst]
            
            for (index, element) in layOutConst.enumerated() {
                element.constant = arryConstant[index]
            }
                    
      //  self.btnMessage.isHidden = (self.deliveryOrderModel.UpcomingOrderLocation.DeliveryStatus == DeliveryOrderStatus.Transit.rawValue) ? false : true
        
        self.btnMessage.isHidden = false
    }
    
    func confirmArrivalAtPickUp() {
        /*
        if AppConstants.LMInstance.isFarFromPickUpLocation(withPickUpLatitude: self.deliveryOrderModel.UpcomingOrderLocation.Pickup.latitude, longitude: self.deliveryOrderModel.UpcomingOrderLocation.Pickup.longitude) {
            
            AppConstants.SRInstance.sendAppAnalyticsToServer(withEventId: AppAnalytics.CONFIRMARRIVALATPICKUPCLICK_EVENT_ID, withEventName: AppAnalytics.CONFIRMARRIVALATPICKUPCLICK_EVENT_NAME)
            AppRouter.presentToCustomAlertVC(withViewController: self, alertType: .ArrivalAtPickUp)
        }
        else {
            self.updateArrivalAtPickUpStatus()
        }*/
    }
    
    func updateArrivalAtPickUpStatus() {
        /*
        if !dropOffIDs.isEmpty {
            WebServiceCall.updateOrderStatus(withStatus: DeliveryOrderStatus.ReturnAtDestination.rawValue, orderModel: self.deliveryOrderModel, dropoffID: self.dropOffIDs, viewCtr: self) { (success, orderModel) in
                
                if success {
                    NotificationCenter.default.post(name: Notification.Name(AppNotificationCenterName.OrderStatusUpdated), object: orderModel)
                }
            }
        }
        else {
            WebServiceCall.updateOrderStatus(withStatus: DeliveryOrderStatus.PickUp.rawValue, orderModel: self.deliveryOrderModel, viewCtr: self) { (success, orderModel) in
                
                if success {
                    NotificationCenter.default.post(name: Notification.Name(AppNotificationCenterName.OrderStatusUpdated), object: orderModel)
                }
            }
        }*/
    }
    
    func confirmArrivalAtDropOff() {
        
        /*
        
        let currentDropOffModel = self.deliveryOrderModel.UpcomingOrderLocation.currentDropOffModel()
        if currentDropOffModel != nil {

            if AppConstants.LMInstance.isFarFromPickUpLocation(withPickUpLatitude: currentDropOffModel!.latitude, longitude: currentDropOffModel!.longitude) {
                
                AppConstants.SRInstance.sendAppAnalyticsToServer(withEventId: AppAnalytics.CONFIRMARRIVALATDESITANTIONCLICK_EVENT_ID, withEventName: AppAnalytics.CONFIRMARRIVALATDESITANTIONCLICK_EVENT_NAME)
                AppRouter.presentToCustomAlertVC(withViewController: self, alertType: .ArrivalAtDropOff)
            }
            else {
                self.updateArrivalAtDropOffStatus(currentDropOffModel: currentDropOffModel!)
            }
        }*/
    }
    
    /*  func updateArrivalAtDropOffStatus(currentDropOffModel : DropoffModel) {
       WebServiceCall.updateOrderStatus(withStatus: DeliveryOrderStatus.Destination.rawValue, orderModel: self.deliveryOrderModel, dropoffID: [currentDropOffModel.dropOffID], viewCtr: self) { (success, orderModel) in
            
            if success {
                NotificationCenter.default.post(name: Notification.Name(AppNotificationCenterName.OrderStatusUpdated), object: orderModel)
            }
        }
    }*/
    
    // MARK: - IBAction  Methods
    @IBAction func clickOnConfirmArrival(_ sender: UIButton) {
        
       /* if self.deliveryOrderModel.UpcomingOrderLocation.DeliveryStatus == DeliveryOrderStatus.Assigned.rawValue || !dropOffIDs.isEmpty {
            
            self.confirmArrivalAtPickUp()
        }
        else if self.deliveryOrderModel.UpcomingOrderLocation.DeliveryStatus == DeliveryOrderStatus.Transit.rawValue {
            
            self.confirmArrivalAtDropOff()
        }*/
    }
    
    @IBAction func clickOnCall(_ sender: UIButton) {
        
     //   GlobalMethods.callOrSms(withDeliveryOrderModel: self.deliveryOrderModel, viewController: self)
    }
    
    @IBAction func clickOnMessage(_ sender: UIButton) {
       /* AppConstants.SRInstance.sendAppAnalyticsToServer(withEventId: AppAnalytics.CHATFROMORDERCLICK_EVENT_ID, withEventName: AppAnalytics.CHATFROMORDERCLICK_EVENT_NAME)
        GlobalMethods.callOrSms(withDeliveryOrderModel: self.deliveryOrderModel, shouldSMS: true, viewController: self)*/
    }
    
    @IBAction func clickOnNeedHelp(_ sender: UIButton) {
       // FleetAppRouter.presentToNeedsHelpVC(withViewController: self, deliveryOrderModel: self.deliveryOrderModel)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
