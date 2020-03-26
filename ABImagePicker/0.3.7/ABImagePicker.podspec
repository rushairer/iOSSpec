Pod::Spec.new do |s|
  s.name             = 'ABImagePicker'
  s.version          = '0.3.7'
  s.summary          = 'A Camera Framework.'
  s.homepage         = 'https://github.com/rushairer/ABImagePicker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'git@github.com:rushairer/ABImagePicker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'ABImagePicker/Classes/**/*'
  
  s.resource_bundles = {
    'ABImagePicker' => ['ABImagePicker/Assets/*']
  }

  s.dependency 'YYCategories', '>= 1.1.0'
  s.dependency 'YYImage', '>= 1.1.0'
  s.dependency 'ISHPermissionKit/PhotoLibrary'
  s.dependency 'ISHPermissionKit/Camera'
  s.dependency 'DZNEmptyDataSet'
  s.dependency 'GPUImage', '>= 0.1.8'
  s.dependency 'MotionOrientation'
  s.dependency 'Masonry'
  s.dependency 'ABExposureCalculator'
  
  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestCameraEnabled ISHPermissionRequestPhotoLibraryEnabled' }
end
