//
//  HUDView.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/12/30.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Convenience Methods
@objc public extension UIView {
    
    var hud: HUDView {
        let config = HUDConfig()
        config.position = .center
        return HUDView(config: config)
    }
    
    func loading() {
        hud.loading()
    }
    
    func loadingProgress() {
        hud.loadingProgress()
    }
    
    func toast(text:String,image:UIImage? = nil) {
        if let im = image {
            hud.toast(message: text, image: im)
        } else {
            hud.toast(message: text)
        }
    }
        
    func showError(description:String,errorImage:UIImage) {
        hud.toast(message: description, image: errorImage)
    }
    
    func showSuccess(description:String,successImage:UIImage) {
        hud.toast(message: description, image: successImage)
    }
    
    func removeHUD() {
        
    }
}

//MARK: -HUDView
open class HUDView: NSObject {
    
    public var config:HUDConfig {
        didSet {
        }
    }
    
    init(config:HUDConfig) {
        self.config = config
        super.init()
    }
    
//    private var timer:Timer
        
    public  func loading() {
    }
    
    public  func loadingProgress() {
    }
    
    public  func toast(message:String,image:UIImage? = nil,duration:TimeInterval = HUDConfig.shared.duration) {
    }
    
    func showHUD() {
        
    }

    func hideHUD() {
        
    }
    
    private func buildHUD(type:HUDType,animation:) -> UIView {
        let wrapperView = UIView()
        var messageLabel: UILabel?
        var imageView: UIImageView?
        
        wrapperView.backgroundColor = HUDConfig.shared.style.backgroundColor

    }
    
}

public class HUDConfig {
     
    public static let shared = HUDConfig()
    
    public var style = HUDStyle()
    
    public var duration: TimeInterval = 3.0
    
    public var position: HUDPosition = .bottom
    
    public var animationEnabled = false
    
}

public struct HUDStyle {
    
    public init () {}

    public var cornerRadius: CGFloat = 10.0
    
    public var padding: CGFloat = 10.0
    
    public var backgroundColor: UIColor = UIColor.black.withAlphaComponent(0.8)
    
    public var textColor: UIColor = .white
    
    public var font: UIFont = .systemFont(ofSize: 14.0)
    
    public var enableBlurEffect:Bool = false

}

public enum HUDPosition {
    
    case center
    
    case top
    
    case bottom
    
    case customPoint
}

public enum HUDType {
    
    case toast
    
    case loading
    
    case customView
}

public enum HUDAnimation {
    
    case none
    
    case zoomInAndOut
    
}


