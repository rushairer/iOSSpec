Pod::Spec.new do |s|
  s.name             = 'ABExposureCalculator'
  s.version          = '0.1.2'
  s.summary          = 'A Exposure Calculator Libaray.'

  s.homepage         = 'https://github.com/rushairer/ABExposureCalculator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'git@github.com:rushairer/ABExposureCalculator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ABExposureCalculator/Classes/**/*'
  
  s.dependency 'Masonry'
  
  s.test_spec 'Tests' do |ts|
    ts.source_files = 'ABExposureCalculator/Tests/*'
    ts.dependency 'Kiwi'
  end
  
end
