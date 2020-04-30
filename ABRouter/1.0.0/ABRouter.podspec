Pod::Spec.new do |s|
  s.name             = 'ABRouter'
  s.version          = '1.0.0'
  s.summary          = 'A Router Libaray.'

  s.homepage         = 'https://github.com/rushairer/ABRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'git@github.com:rushairer/ABRouter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ABRouter/Classes/**/*'
  
end
