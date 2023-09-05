Pod::Spec.new do |s|
  s.name                  = 'PasseiLogManager'
  s.version               = '0.0.1'
  s.summary               = 'Log generator'
  s.swift_version         = '5.0'
  s.description           = <<-DESC "Describe the use of pod file"
  Generate log os log and save log in file, folder /tmp
  DESC
  s.homepage              = 'https://github.com/ziminny/PasseiLogManager'
  s.license               = { :type => 'PASSEI-GROUP', :file => 'LICENSE' }
  s.authors               = { 'Vagner Oliveira' => 'ziminny@gmail.com' }
  s.source                = { :git => 'https://github.com/ziminny/PasseiLogManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'
  s.source_files          = 'PasseiLogManager/Classes/**/*' 
  
  end