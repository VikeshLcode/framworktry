Pod::Spec.new do |s|
  s.name             = 'FedfinaFramework_Framework'
  s.version          = '1.0.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = 'By far the most fantastic view I have seen in my entire life. No joke.'

  s.homepage         = 'https://github.com/<YOUR GITHUB USERNAME>/FantasticView'
  s.license          = 'https://github.com/<YOUR GITHUB USERNAME>/FantasticView'
  s.author           = { 'Vk' => 'vkotian311@gmail.com' }
  s.source           = { :git => 'https://github.com/<YOUR GITHUB USERNAME>/FantasticView.git', :tag => '1.0.0' }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'FantasticView/FantasticView.swift'
  s.dependency 'Alamofire'
end
