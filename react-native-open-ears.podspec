# coding: utf-8
require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name             = package_json["name"]
  s.version          = package_json["version"]
  s.summary          = package_json["description"]

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  React Native OpenEars framework integration.
                       DESC

  s.homepage         = 'https://github.com/actuosus/react-native-open-ears'
  s.license          = package_json["license"]
  s.author           = { package_json["author"] => package_json["author"] }
  s.source           = { :git => 'https://github.com/actuosus/react-native-open-ears.git', :tag => s.version.to_s }

  s.platform         = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  s.source           = { :git => "#{package_json["repository"]["url"]}.git", :tag => "#{s.version}" }
  s.source_files     = 'ios/RCTOpenEars/*.{h,m}'
  
  # s.resource_bundles = {
  #   'react-native-open-ears' => ['react-native-open-ears/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'

  s.vendored_framework = "ios/RCTOpenEars/Framework/Slt.framework"
  s.vendored_framework = "ios/RCTOpenEars/Framework/OpenEars.framework"

  s.subspec 'English' do |ss|
    s.resource = 'ios/RCTOpenEars/Framework/AcousticModelEnglish.bundle'
  end

  s.subspec 'Russian' do |ss|
    s.resource = 'ios/RCTOpenEars/Framework/AcousticModelRussian.bundle'
  end

  s.dependency 'React'
end
