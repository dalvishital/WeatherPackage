Pod::Spec.new do |s|
  s.name             = 'WeatherPackage'
  s.version          = '0.0.1'
  s.summary          = 'Creating the bundle for accessing files and classes'
 
  s.description      = <<-DESC
Chat App bundle framework
                       DESC
 
  s.homepage         = 'https://github.com/dalvishital/WeatherPackage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = "shital dalavi"
s.platform     = :ios, "10.0"
s.platform     = :watchOS, "5.0"
  s.ios.deployment_target = "11.0"
  s.source           = { :git => 'https://github.com/dalvishital/WeatherPackage.git', :tag => "0.0.1"} 
 
  
 s.source_files  = "WeatherPackage", "WeatherPackage/**/*.{h,m,swift}"

end