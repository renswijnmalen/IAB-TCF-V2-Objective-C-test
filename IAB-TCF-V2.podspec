Pod::Spec.new do |spec|
  spec.name          = "IAB-TCF-V2"
  spec.version       = "1.0.0"
  spec.summary       = "IAB Transparency & Consent Framework v2"
  spec.description   = <<-DESC
                        IAB Transparency & Consent Framework v2 - Test
                      DESC
  
  spec.homepage      = "HOMEPAGE_URL"
  spec.license       = { :type => "MIT" }
  spec.author        = { "Your Name" => "r.wijnmalen@yipyip.nl" }
  
  spec.ios.deployment_target = "12.0" # Pas aan naar je minimum iOS versie
  
  spec.source        = {
    :git => "git@github.com:renswijnmalen/IAB-TCF-V2-Objective-C-test.git",
  }
  
    # Configureer de module naam voor de volledige pod
  spec.module_name = 'IAB_TCF_V2'
  
  # Definieer de verschillende componenten
  spec.default_subspec = 'All'
  
  spec.subspec 'All' do |all|
    all.dependency 'IAB-TCF-V2/API'
    all.dependency 'IAB-TCF-V2/Utils'
  end
  
  # API subspec
  spec.subspec 'API' do |api|
    api.source_files = 'Sources/API/**/*.swift'
    api.dependency 'IAB-TCF-V2/Utils'
    
    api.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'IAB_TCF_V2_API',
      'OTHER_SWIFT_FLAGS' => '-module-name IAB_TCF_V2_API'
    }
  end
  
  # Utils subspec
  spec.subspec 'Utils' do |utils|
    utils.source_files = 'Sources/Utils/**/*.swift'
    
    # Configureer een geneste module voor Utils
    utils.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'IAB_TCF_V2_UTILS',
      'OTHER_SWIFT_FLAGS' => '-module-name IAB_TCF_V2_Utils'
    }
  end
  
  spec.swift_versions = ['5.0']
  spec.frameworks = 'Foundation'
end
