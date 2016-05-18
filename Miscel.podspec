#
# Be sure to run `pod lib lint Miscel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Miscel"
  s.version          = "0.1.1"
  s.summary          = "Miscellaneous Swift Utilities"

  s.description      = <<-DESC
Miscellaneous Swift Utilities
                       DESC

  s.homepage         = "https://github.com/buscarini/Miscel"
  s.license          = 'MIT'
  s.author           = { "José Manuel" => "buscarini@gmail.com" }
  s.source           = { :git => "https://github.com/buscarini/Miscel.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  
  s.source_files = 'Miscel/Classes/**/*'
  
  s.dependency 'Layitout'
    
end
