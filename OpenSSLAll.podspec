
Pod::Spec.new do |s|
  s.name             = "OpenSSLAll"
  s.version          = "0.1.0"
  s.summary          = "A short description of OpenSSLAll."

  s.description      = <<-DESC
  A description
                       DESC

  s.homepage         = "https://github.com/reTXT/OpenSSLAll"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Kevin Wooten" => "kevin@wooten.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/OpenSSLAll.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.header_mappings_dir = 'OpenSSLAll/include'
  s.source_files = 'OpenSSLAll/src/**/*.c'
  s.preserve_paths = 'OpenSSLAll/src/**/*.h'
  s.compiler_flags = '-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -O3 -fomit-frame-pointer -fno-common'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
