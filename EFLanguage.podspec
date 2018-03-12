Pod::Spec.new do |s|
  s.name             = 'EFLanguage'
  s.version          = '0.0.1'
  s.summary          = 'Basic language setting function.'
 
  s.description      = <<-DESC
Basic language setting function. you can easy to setting you language
                       DESC
 
  s.homepage         = 'https://github.com/lisheng1219/Language'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lisheng' => 'lis_02@163.com' }
  s.source           = { :git => 'https://github.com/lisheng1219/Language.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Language/Bundle/*.swift'
  s.swift_version    = '4.0'
 
end
