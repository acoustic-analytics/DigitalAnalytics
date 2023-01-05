
Pod::Spec.new do |s|
  s.name = 'DigitalAnalytics'
  s.version = '1.1.100'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :text => 'https://github.com/acoustic-analytics/DigitalAnalytics/blob/master/Licenses/License' }
  s.homepage = 'https://github.com/acoustic-analytics/DigitalAnalytics'
  s.summary = 'Acoustic DigitalAnalytics EOCore iOS SDK'
  s.cocoapods_version = '>= 1.10.0'
  s.platforms = { :ios => '12.0' }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Release/DAMod.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Release/DAMod.xcframework/*/DAMod.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/acoustic-analytics/DigitalAnalytics.git', :tag => '1.1.100'}
  s.vendored_frameworks = 'SDKs/iOS/Release/DAMod.xcframework'
  s.dependency 'EOCore'
end