#
# Be sure to run `pod lib lint DNKitUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DNKitUtils'
  s.version          = '0.1.0'
  s.summary          = 'Contains UI-independent tools'

  s.description      = <<-DESC
Contains UI-independent tools, syntax sugar, etc
                       DESC

  s.homepage         = 'https://github.com/denisnzrk/DNKitUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Denis' => 'denis.nazarenko@raiffeisen.ru' }
  s.source           = { :git => 'https://github.com/denisnzrk/DNKitUtils.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'DNKitUtils/Source/**/*'
end
