Pod::Spec.new do |spec|
    spec.name         = 'RNSwiftComunication'
    spec.version      = '0.1.0'
    spec.summary      = 'A short description of RNSwiftComunication.'
    spec.description  = <<-DESC
                                             A longer description of RNSwiftComunication in multiple lines.
                                             DESC
    spec.homepage     = 'https://github.com/Slopez5/RNSwiftComunication.git'
    spec.license      = { :type => 'MIT', :file => 'LICENSE' }
    spec.author       = { 'Your Name' => 'your.email@example.com' }
    spec.source       = { :git => 'https://github.com/Slopez5/RNSwiftComunication.git', :tag => spec.version.to_s }
    spec.platform     = :ios, '10.0'
    spec.source_files  = 'RNSwiftComunication/**/*.{swift,h,m}'
    spec.swift_version = '5.0'


    spec.dependency 'React-Core'
    spec.dependency 'React-RCTBridge'
    spec.dependency 'React-RCTEventEmitter'
end