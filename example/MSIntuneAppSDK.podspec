Pod::Spec.new do |s|
  s.name = 'MSIntuneAppSDK'
  s.version = "1.19"
  s.summary = 'Microsoft Intune'
  s.license = 'UNLICENCED'
  s.ios.deployment_target = '15.0'
  s.authors = "Microsoft Inc"
  s.homepage = "https://github.com/msintuneappsdk/ms-intune-app-sdk-ios/"
  s.source = { git: "https://github.com/msintuneappsdk/ms-intune-app-sdk-ios/tree/main" }
  s.source_files = "ios-arm64/IntuneMAMSwift.framework/*.{swift,h,m}", "ios-arm64/IntuneMAMSwift.swiftmodule/*.{swift,h,m}",
                   "ios-arm64/IntuneMAMSwift.framework/**/*.{swift,h,m}", "ios-arm64/IntuneMAMSwift.swiftmodule/**/*.{swift,h,m}"
  s.module_map = "ios-arm64/IntuneMAMSwift.framework/Modules/module.modulemap"
  s.swift_version = '5.1'
end