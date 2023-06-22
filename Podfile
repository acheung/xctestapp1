# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

source 'https://github.com/CocoaPods/Specs.git'

plugin 'cocoapods-art', :sources => [
  'cocoapods-local'
]

target 'XCTestApp1' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for XCTestApp1
  pod 'Alamofire', '~> 5.0'
  pod 'SwiftLint'
  
  pod 'PelmorexTelemetrySchema', '~> 1.0'
  
  target 'XCTestApp1Tests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'XCTestApp1UITests' do
    # Pods for testing
  end

end

post_install do |installer|
  
  installer.pods_project.build_configurations.each do |config|

    if config.name == 'Release'
      config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
    else
      config.build_settings['SWIFT_COMPILATION_MODE'] = 'singlefile'
    end

  end

  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|

      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      # config.build_settings['WATCHOS_DEPLOYMENT_TARGET'] = '8.0'
      
    end
  end
  
end #end post_install