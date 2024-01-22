Pod::Spec.new do |s|
  s.name             = 'Modelable'
  s.version          = '0.1.1'
  s.summary          = 'Codable 封装，用于JSON转Model'
  s.homepage         = 'https://github.com/xiaoyouPrince/Modelable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiaoyouPrince' => 'xiaoyouPrince@163.com' }
  s.source           = { :git => 'https://github.com/xiaoyouPrince/Modelable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.1'
  s.source_files = 'Sources/**/*'
end
