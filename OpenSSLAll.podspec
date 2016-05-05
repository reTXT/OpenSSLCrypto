
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

  s.source_files = ['openssl/*.h', 'src/**/*.{h,c}']
  s.preserve_paths = ['src/**/*.ch']
  s.header_mappings_dir = '.'
  s.private_header_files = 'src/**/*.h'
  s.compiler_flags = '-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -O3 -fomit-frame-pointer -fno-common -DOPENSSL_NO_INLINE_ASM -DOPENSSL_NO_ASM'
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/OpenSSLAll' }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
