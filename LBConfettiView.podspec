Pod::Spec.new do |s|

s.name             = 'LBConfettiView'
s.version          = '1.1.0'
s.summary          = '🎉 Smart Confetti View for iOS'
s.homepage         = 'https://github.com/lachlanbell/LBConfettiView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'lachlanbell' => 'hi@lachy.io' }
s.source           = { :git => 'https://github.com/lachlanbell/LBConfettiView.git', :tag => s.version.to_s }
s.swift_version    = '5.6'

s.ios.deployment_target = '12.0'

s.source_files = 'Sources/LBConfettiView/Sources/*.{swift,h}'

s.resources = 'Sources/LBConfettiView/Assets/*.xcassets'

end
