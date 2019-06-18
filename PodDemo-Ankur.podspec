Pod::Spec.new do |s|
  s.name             = 'PodDemo-Ankur'
  s.version          = '1.0.2'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/ankur-nagarro/RandomBackground'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ankur Arya' => 'ankur.arya@nagarro.com' }
  s.source           = { :git => 'https://github.com/ankur-nagarro/RandomBackground.git', :tag => s.version.to_s }
  s.dependency 'RxSwift', '~> 4.5'
  s.ios.deployment_target = '10.0'
  s.source_files = 'PodDemo/Background.swift'
  
 
end