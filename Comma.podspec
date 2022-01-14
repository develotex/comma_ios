# Be sure to run `pod lib lint Comma.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name         = 'Comma'
  s.version      = '1.0.5'
  s.summary      = 'Comma'
  s.description  = <<-DESC
   Comma is an SDK for audio and video calls.
                   DESC
  s.homepage     = 'http://develotex.io'
  s.source       = { :git => 'https://github.com/develotex/comma_ios.git', :tag => s.version }
  s.author             = { 'develotex' => 'develotex@gmail.com' }
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.platform     = :ios, '13.0'
  # s.swift_version      = '5.0'
  s.swift_versions = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5','5.6','5']
  s.vendored_frameworks = 'Comma.framework'
  
  s.frameworks = 'UIKit'
  s.dependency 'GoogleWebRTC', '~> 1.1'
  s.dependency 'SwiftSignalRClient'


#  s.resource_bundles = {
#   'Comma' => ['Comma.framework/Comma.bundle/*.png']
#  }

 s.source_files = 'Comma.framework/Headers/**/*.{h,m,swift}'
 s.public_header_files = 'Comma.framework/Headers/**/*.{h,m,swift}'


 s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
 
end
