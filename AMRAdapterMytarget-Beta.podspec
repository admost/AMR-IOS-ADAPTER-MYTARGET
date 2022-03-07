Pod::Spec.new do |s|
  s.name             = 'AMRAdapterMytarget-Beta'
  s.version          = '5.15.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'MyTarget adapter for AMR SDK.'
  s.description      = 'AMR MyTarget adapter allows publishers to mediate MyTarget banner, native banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-MYTARGET.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_frameworks = 'AMRAdapterMytarget/Libs/AMRAdapterMytarget.xcframework'
  s.dependency 'myTargetSDK', '5.15.0'
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
end
