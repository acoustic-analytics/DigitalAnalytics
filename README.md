# Acoustic DigitalAnalytics

Acoustic DigitalAnalytics is a digital analytics SDK as documented [here](https://developer.goacoustic.com/acoustic-dig-analytics/docs/getting-started-with-the-digital-analytics-sdk-for-ios)

# Getting Started with Cocoapods
## Prerequisites

You need to have recent cocoapods version installed on your Mac OS. Please refer to cocoapods website for the details.

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.goacoustic.com/acoustic-dig-analytics/docs/getting-started-with-the-digital-analytics-sdk-for-ios)

## Installing

Add following lines at the begining of your Podfile

>Set platform as iOS 9
>
>`platform :ios, '9.0'`
>
>Uncomment use_frameworks
>
>`use_frameworks!`

In the respective targets for your project in the Podfile add the following line if you want to use Acoustic DigitalAnalytics SDK's release version

>`pod 'DigitalAnalytics'`

In the respective targets for your project in the Podfile add the following line if you want to use Acoustic DigitalAnalytics SDK's release version

>`pod 'DigitalAnalyticsDebug'`

Remember you can use only one of  `pod 'DigitalAnalytics'` and `pod 'DigitalAnalyticsDebug'`. Do not use both at the same time.

## Choosing A Suitable Hashing Library
Starting Tealeaf version 10.6.20 onwards, the SDKs support 3 different hashing algorithms. SHA256, SHA512 and MD5; default being SHA256. If you want to use SHA256 no additional integration steps are required. Previously Tealeaf supported MD5 only and was the default algorithm. Apple is deprecating the MD5 APIs, hence we are moving to SHA2.

### Using SHA256
No additional integration steps required. IBMTealeaf and IBMTealeafDebug by default use SHA256.

### Using SHA512
Instead of `pod 'IBMTealeaf'` or `pod 'IBMTealeafDebug'` in your Podfile, please use `pod 'IBMTealeaf/SHA512'` or `pod 'IBMTealeafDebug/SHA512'`

### Using MD5
Instead of `pod 'IBMTealeaf'` or `pod 'IBMTealeafDebug'` in your Podfile, please use `pod 'IBMTealeaf/MD5'` or `pod 'IBMTealeafDebug/MD5'`

### Important Note
Please do use $(inherited) flag in your application target's "Other Linker Settings" This will ensure all the pods are linked correctly.

When your application starts, MD5 and SHA512 hashing libraries print their versions in the console log. Forgetting to set $(inherited) flag can be one reason for it. If MD5 or SHA512 is not linked properly, Tealeaf will use built-in SHA256 default algorithm.

You may read more about Hashing Libraries [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/hashing-libraries-for-computing-unique-ids-md5-sha256-and-sha512)

# Getting Started with Carthage
Open Cartfile in a text editor of your choice and note the following lines:

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's release version

`binary "https://raw.githubusercontent.com/acoustic-analytics/IBMTealeaf/master/Tealeaf.json" >= 10.6.36`

`binary "https://raw.githubusercontent.com/acoustic-analytics/EOCore/master/EOCore.json" >= 2.3.24`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's debug version

`binary "https://raw.githubusercontent.com/acoustic-analytics/IBMTealeaf/master/TealeafDebug.json" >= 10.6.36`

`binary "https://raw.githubusercontent.com/acoustic-analytics/EOCore/master/EOCoreDebug.json" >= 2.3.24`

You will notice that by default the sample application uses `Debug` version of libraries.

Note that you can use only one of  `Release` or `Debug`. Do not use both at the same time.

Now you need to install the carthage by running the following command.

`carthage update --platform iOS`

Above carthage command should complete with no errors.

# Getting Started with Swift Package
Please go to 
- Release library: https://github.com/acoustic-analytics/Tealeaf-SP
- Debug library: https://github.com/acoustic-analytics/TealeafDebug-SP
***
## Troubleshooting

If you are using Debug version of Acoustic DigitalAnalytics SDK. i.e. `pod 'DigitalAnalyticsDebug'` , then you may edit your project's scheme in XCode and add environmental variable `DIGITAL_ANALYTICS_DEBUG` and set its value to 1; also add environmental variable `EODebug` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the DigitalAnalytics support engineers will ask you for these logs.

If you are getting an issue like:

dyld: Library not loaded: @rpath/EOCore.framework/EOCore
  Referenced from: /Users/h26259/Library/Developer/CoreSimulator/Devices/57B11359-B896-495E-B802-A8377313F848/data/Containers/Bundle/Application/9CE5AF4D-CD63-49F8-8288-677EC7BD81DA/myCigna.app/myCigna
  Reason: image not found
dyld: launch, loading dependent libraries

In the podfile, change from use_frameworks! to use_modular_headers! to correct issues.

## License
License files can be read [here](https://github.com/acoustic-analytics/DigitalAnalytics/blob/master/Licenses/License)
