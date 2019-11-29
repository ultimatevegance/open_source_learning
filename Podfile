source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
inhibit_all_warnings!

use_frameworks!

target 'ios_open_source_learnig_project' do
	pod 'SwiftyJSON'
	pod 'Alamofire'
	pod 'QMUIKit'
	pod 'Kingfisher'
	pod 'Moya'	
	pod 'NIMKit/Full'
	pod 'SwiftyStoreKit'
	pod 'SVProgressHUD'
	pod 'OnboardKit'
	pod 'UIFontComplete'
	pod 'SwiftOverlays'
	pod 'WLEmptyState'
	pod 'IHProgressHUD'
	pod 'Hero'
	pod 'Toast-Swift'

end

post_install do |installer|
  	installer.pods_project.targets.each do |target|
    puts target.name
  end
end
