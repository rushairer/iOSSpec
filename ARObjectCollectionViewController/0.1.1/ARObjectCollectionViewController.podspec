Pod::Spec.new do |s|
  s.name             = 'ARObjectCollectionViewController'
  s.version          = '0.1.1'
  s.summary          = 'ARObjectCollectionViewController.'

  s.homepage         = 'https://github.com/rushairer/ARObjectCollectionViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'https://github.com/rushairer/ARObjectCollectionViewController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ARObjectCollectionViewController/Classes/**/*'
  
end
