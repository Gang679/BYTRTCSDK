Pod::Spec.new do |spec|


  spec.name         = "BYTRTCSDK"
  spec.version      = "0.0.2"
  spec.summary      = "视频模块SDK"

  spec.description  = <<-DESC
    提供视频功能模块SDK，视频通话相关设置
                   DESC

  spec.homepage     = "https://github.com/Gang679"

  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "gangzi" => "3139726292@qq.com" }
  # spec.platform     = :ios
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/Gang679/BYTRTCSDK.git", :tag => "#{spec.version}" }
    # 将打包好的SDK放到对应目录，pod 'BYTRTCSDK'执行后，SDK就乖乖到pod里面去了
    spec.vendored_frameworks = "BYTRTC/BYTRTCSDK.framework"
    
    # 这个是SDK需要的资源文件，这样写到时候会生成一个BYTRTCSSDKBundle.bundel文件放到.app的包里面。
    spec.resources     = 'BYTRTC/BYTRTCSSDKBundle.bundle'
    
    spec.source_files  = "BYTRTC"
  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  
  s.source_files  = 'BYTRTC/**/*.{h,m}'

  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  spec.framework  = "UIKit"
  #  spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }]
  # spec.static_framework = true
   spec.dependency 'TXLiteAVSDK_TRTC'
   spec.dependency 'TXIMSDK_iOS'
   spec.dependency 'SDWebImage'

end
