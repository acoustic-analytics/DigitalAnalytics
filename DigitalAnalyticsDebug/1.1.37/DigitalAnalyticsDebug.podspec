Pod::Spec.new do |s|
  s.name = 'DigitalAnalyticsDebug'
  s.version = '1.1.37'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :file => 'Licenses/License' }
  s.homepage = 'https://github.com/acoustic-analytics/DigitalAnalytics'
  s.summary = 'Acoustic DigitalAnalytics EOCore iOS SDK'
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Debug/DAMod.framework/DAMod.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Debug/DAMod.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/acoustic-analytics/DigitalAnalytics.git', :tag => '1.1.37'}
  s.vendored_frameworks = 'SDKs/iOS/Debug/DAMod.framework'
  s.dependency 'EOCoreDebug'
end
