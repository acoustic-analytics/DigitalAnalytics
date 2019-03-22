Pod::Spec.new do |s|
  s.name = 'DigitalAnalyticsDebug'
  s.version = '1.1.11'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Debug/DAMod.framework/DAMod.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '1.1.11'}
  s.vendored_frameworks = 'SDKs/iOS/Debug/DAMod.framework'
  s.dependency 'EOCoreDebug'
end
