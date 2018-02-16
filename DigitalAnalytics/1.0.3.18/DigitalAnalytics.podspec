Pod::Spec.new do |s|
  s.name = 'DigitalAnalytics'
  s.version = '1.0.3.18'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/DigitalAnalytics'
  s.summary = 'Tealeaf iOS SDK'
  s.platforms = { :ios => "9.0" }
  s.summary = 'Digital Analytics iOS SDK'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Release/DAMod.framework/DAMod.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/DigitalAnalytics.git', :tag => '1.0.3.18'}
  s.vendored_frameworks = 'SDKs/iOS/Release/DAMod.framework'
  s.dependency 'EOCore'  
end

