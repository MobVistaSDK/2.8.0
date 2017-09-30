
Pod::Spec.new do |s|

  s.name         = "MobVistaSDK"
  s.version      = "2.7.0"
  s.summary      = "MobVista framework"
  s.license      = "MIT"
  s.homepage     = 'https://github.com/MobVistaSDK/SDK.git'
  s.author             = { "junjie.chen" => "junjie.chen@mobvista.com" }
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/MobVistaSDK/SDK.git", :tag =>s.version }

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MobVistaSDK/"' }

  s.subspec 'Native' do |n|
    n.vendored_frameworks = "MVSDK.framework"
    n.framework = 'CoreGraphics', 'Foundation', 'UIKit', 'AdSupport', 'StoreKit', 'QuartzCore', 'CoreLocation', 'CoreTelephony', 'MobileCoreServices', 'Accelerate', 'SystemConfiguration', 'CoreMotion', 'AVFoundation', 'CoreMedia', 'WebKit'
    n.libraries = 'z', 'sqlite3'
  end

  s.subspec 'AppWall' do |a|
      a.vendored_frameworks = "MVSDKAppWall.framework"
      a.dependency 'MobVistaSDK/Native'
  end

  s.subspec 'RewardVideo' do |r|
      r.vendored_frameworks = "MVSDKReward.framework"
      r.dependency 'MobVistaSDK/Native'
  end

  s.subspec 'OfferWall' do |o|
      o.vendored_frameworks = "MVSDKOfferWall.framework"
      o.dependency 'MobVistaSDK/Native'
  end

  s.subspec 'Interstitial' do |i|
      i.vendored_frameworks = "MVSDKInterstitial.framework"
      i.dependency 'MobVistaSDK/Native'
  end

end
