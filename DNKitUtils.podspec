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
  s.summary          = 'A short description of DNKitUtils.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Denis/DNKitUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Denis' => 'denis.nazarenko@raiffeisen.ru' }
  s.source           = { :git => 'https://github.com/Denis/DNKitUtils.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'DNKitUtils/Source/**/*'
end
