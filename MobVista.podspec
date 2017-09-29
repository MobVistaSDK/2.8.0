
Pod::Spec.new do |s|

  s.name         = "MobVista"
  s.version      = "2.7.0"
  s.summary      = "A short description of MobVista."
  s.license      = "MIT"
  s.homepage     = 'https://github.com/MobVistaSDK/SDK.git'
  s.author             = { "junjie.chen" => "junjie.chen@mobvista.com" }
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/MobVistaSDK/SDK.git", :tag => "s.version" }

  s.vendored_frameworks = 'MVSDK.framework','MVSDKAppWall.framework','MVSDKOfferWall.framework','MVSDKInterstitial.framework','MVSDKReward.framework'

  s.framework = 'CoreGraphics', 'Foundation', 'UIKit', 'AdSupport', 'StoreKit', 'QuartzCore', 'CoreLocation', 'CoreTelephony', 'MobileCoreServices', 'Accelerate', 'SystemConfiguration', 'CoreMotion', 'AVFoundation', 'CoreMedia', 'WebKit'

  s.libraries = 'z', 'sqlite3'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MobVista/"' }

end
