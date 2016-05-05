
Pod::Spec.new do |s|
  s.name             = "OpenSSLCrypto"
  s.version          = "0.1.0"
  s.summary          = "A short description of OpenSSLCrypto."
  s.description      = <<-DESC
  A long description of OpenSSLCrypto
                       DESC

  s.homepage         = "https://github.com/reTXT/OpenSSLCrypto"
  s.license          = 'MIT'
  s.author           = { "Kevin Wooten" => "kevin@retxt.com" }
  s.source           = { :git => "https://github.com/reTXT/OpenSSLCrypto.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.header_dir = 'openssl'
  s.source_files = ['include/*.h', 'src/**/*.{h,c}']
  s.preserve_paths = ['src/**/*.ch']
  s.public_header_files = 'include/*.h'
  s.compiler_flags = '-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -O3 -fomit-frame-pointer -fno-common -DOPENSSL_NO_INLINE_ASM -DOPENSSL_NO_ASM'

end
