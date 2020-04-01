Pod::Spec.new do |s|
  s.name             = 'ABWatchSessionManager'
  s.version          = '0.4.0'
  s.summary          = 'WatchSessionManager Manager.'

  s.homepage         = 'https://github.com/rushairer/ABWatchSessionManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abenx' => 'aben@abenx.com' }
  s.source           = { :git => 'https://github.com/rushairer/ABWatchSessionManager.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'ABWatchSessionManager/Classes/**/*'

end
