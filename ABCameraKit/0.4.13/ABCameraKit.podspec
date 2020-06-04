Pod::Spec.new do |s|
  s.name             = 'ABCameraKit'
  s.version          = '0.4.13'
  s.summary          = 'A Camera Kit.'
  s.homepage         = 'https://github.com/rushairer/ABCameraKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aben' => 'aben@abenx.com' }
  s.source           = { :git => 'https://github.com/rushairer/ABCameraKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.default_subspecs = "Common", "ABAlbum", "ABCamera", "ABPhotoPreview"

  s.resource_bundles = {
      'ABCameraKit' => ['ABCameraKit/Assets/*']
  }

  s.subspec 'Common' do |sp|
    sp.source_files = 'ABCameraKit/Classes/Common'

    sp.dependency 'YYCategories', '>= 1.1.0'
    sp.dependency 'Masonry'
    sp.dependency 'DZNEmptyDataSet'
    sp.dependency 'YYImage', '>= 1.1.0'
  end

  s.subspec 'ABAlbum' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABAlbum'

    sp.dependency 'ABCameraKit/Common'

    sp.dependency 'YYCategories', '>= 1.1.0'
    sp.dependency 'Masonry'
    sp.dependency 'ISHPermissionKit/PhotoLibrary'
    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestPhotoLibraryEnabled' }
  end

  s.subspec 'ABFilter' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABFilter'

    sp.dependency 'ABCameraKit/Common'

    sp.dependency 'GPUImage', '>= 0.1.8'
  end

  s.subspec 'ABCamera' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABCamera'

    sp.dependency 'ABCameraKit/Common'
    sp.dependency 'ABCameraKit/ABFilter'

    sp.dependency 'YYCategories', '>= 1.1.0'
    sp.dependency 'Masonry'
    sp.dependency 'GPUImage', '>= 0.1.8'
    sp.dependency 'MotionOrientation', '>= 0.2.0'
    sp.dependency 'ISHPermissionKit/Camera'
    sp.dependency 'ISHPermissionKit/PhotoLibrary'
    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestCameraEnabled ISHPermissionRequestPhotoLibraryEnabled' }
  end

  s.subspec 'ABPhotoPreview' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABPhotoPreview'

    sp.dependency 'ABCameraKit/Common'

    sp.dependency 'YYCategories', '>= 1.1.0'
    sp.dependency 'Masonry'
    sp.dependency 'M13ProgressSuite'
    sp.dependency 'ISHPermissionKit/PhotoLibrary'
    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ISHPermissionRequestPhotoLibraryEnabled' }
  end

  s.subspec 'ABExposureCalculatorCamera' do |sp|
    sp.source_files = 'ABCameraKit/Classes/ABExposureCalculatorCamera'

    sp.dependency 'ABCameraKit/Common'
    sp.dependency 'ABCameraKit/ABCamera'

    sp.dependency 'ABExposureCalculator'
    sp.dependency 'ABWatchSessionManager'
  end

end
