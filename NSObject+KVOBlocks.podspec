#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "NSObject+KVOBlocks"
  s.version                 = "0.0.1"
  s.summary                 = "No bullshit block-based KVO using associated objects."
  s.homepage                = "https://github.com/dclelland/NSObject-KVOBlocks"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/NSObject-KVOBlocks.git", :tag => "0.0.1" }
  s.platform                = :ios, '7.0'
  s.ios.deployment_target   = '7.0'
  s.ios.source_files        = 'NSObject+KVOBlocks/*.{h,m}'
  s.requires_arc            = true
end