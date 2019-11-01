Pod::Spec.new do |s|
  s.name = 'DigitalAnalytics'
  s.version = '1.1.23'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/License' }
  s.homepage = 'https://github.com/ibm-watson-cxa/DigitalAnalytics'
  s.summary = 'IBM Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Release/DAMod.framework/DAMod.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Release/DAMod.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/DigitalAnalytics.git', :tag => '1.1.23'}
  s.vendored_frameworks = 'SDKs/iOS/Release/DAMod.framework'
  s.dependency 'EOCore'
end
