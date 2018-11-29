Pod::Spec.new do |s|

s.name             = 'LBConfettiView'
s.version          = '1.0.0'
s.summary          = '🎉 Smart Confetti View for iOS'
s.homepage         = 'https://github.com/lachlanbell/LBConfettiView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'lachlanbell' => 'hi@lachy.io' }
s.source           = { :git => 'https://github.com/lachlanbell/LBConfettiView.git', :tag => s.version.to_s }
s.swift_version    = '4.2'

s.ios.deployment_target = '8.0'

s.source_files = 'LBConfettiView/Sources/*.{swift,h}'

s.resources = 'LBConfettiView/Assets/*.xcassets'

end
