#
#  Be sure to run `pod spec lint WebRTC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "WebRTC"
  s.version      = "0.0.1"
  s.summary      = "WebRTC static lib for iOS."

  s.description  = <<-DESC
                   A longer description of WebRTC in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/dmitryrybakov/WebRTC"
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  s.author       = "dmitryrybakov"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dmitryrybakov/WebRTC.git" }

  s.source_files  = "headers/*.h"
  s.public_header_files = "headers/*.h"

  s.preserve_path = "lib/libWebRTC-8049-ios-arm64_v8a-Release.a", "lib/libWebRTC-8049-ios-x86-Release.a"
  s.vendored_libraries = "lib/libWebRTC-8049-ios-arm64_v8a-Release.a", "lib/libWebRTC-8049-ios-x86-Release.a"

  s.frameworks = "QuartzCore", "OpenGLES", "AudioToolbox", "AVFoundation", "CoreVideo", "Foundation", "UIKit", "CoreGraphics", "Security", "AssetsLibrary", "MobileCoreServices", "CoreLocation", "CoreMedia", "GLKit"
  s.libraries = "sqlite3", "stdc++", "System", "util", "icucore"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/headers/**" }
  
   s.prepare_command = <<-CMD
		    gzip -d ./lib/*.gz
		    CMD
end
