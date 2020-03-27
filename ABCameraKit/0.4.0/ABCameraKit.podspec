Pod::Spec.new do |s|
  s.name             = 'ABCameraKit'
  s.version          = '0.4.0'
  s.summary          = 'A Camera Kit.'
  s.homepage         = 'https://github.com/rushairer/ABCameraKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'git@github.com:rushairer/ABCameraKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.default_subspecs = "Common", "ABAlbum", "ABCamera", "ABPhotoPreview"
  
  s.dependency 'GPUImage', '>= 0.1.8'
  s.dependency 'YYCategories', '>= 1.1.0'
  s.dependency 'Masonry'
  s.dependency 'MotionOrientation'
  s.dependency 'ABExposureCalculator'

  s.subspec 'Common' do |sp|
    sp.source_files = 'ABCameraKit/Classes/Common'
    sp.resource_bundles = {
        'ABCameraKit' => ['ABCameraKit/Assets/*']
    }
    sp.dependency 'DZNEmptyDataSet'
    sp.dependency 'YYImage', '>= 1.1.0'
  end
  
  s.subspec 'ABAlbum' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABAlbum'
    sp.dependency 'ABCameraKit/Common'
    sp.dependency 'ISHPermissionKit/PhotoLibrary'
    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestPhotoLibraryEnabled' }
  end
  
  s.subspec 'ABCamera' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABCamera'
    sp.dependency 'ABCameraKit/Common'
    sp.dependency 'ISHPermissionKit/Camera'
    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestCameraEnabled' }
  end

  s.subspec 'ABPhotoPreview' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABPhotoPreview'
    sp.dependency 'ABCameraKit/Common'
  end

end
