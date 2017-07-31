Pod::Spec.new do |s|
  s.name             = 'UDCornerTagView'
  s.version          = '1.0.0'
  s.summary          = 'A fully UIview subclass of the native UIView which allows you to create beautiful Tag just some code.'
  s.homepage         = 'https://cocoapods.org/pods/LGButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'UnivexDont' => 'winerdt@163.com' }
  s.source           = { :git => 'https://github.com/UnivexDont/UDConerTagView.git', :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'

end