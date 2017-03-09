#
# Be sure to run `pod lib lint SearchInTwitter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SearchInTwitter'
  s.version          = '1.0.0'
  s.summary      = "this CocoaPod use to search twitter by string to get list of statuses"
  s.description  = <<-DESC
  Using this pod you can serch for Tweets string in Twitter and get list of statuses
                   DESC

  s.homepage         = 'https://github.com/gal-m/SearchInTwitter.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gal' => 'g2a2l2@gmail.com' }
  s.source           = { :git => "https://github.com/gal-m/SearchInTwitter.git", :tag => "1.0.0" }
  s.ios.deployment_target = '8.0'
  s.source_files = 'SearchInTwitter/**/*'
  s.dependency 'AFNetworking'
end
