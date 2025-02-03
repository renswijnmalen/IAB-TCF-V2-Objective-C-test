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
  
  spec.source_files  = 'Sources/**/*.swift'
  
  spec.swift_versions = ['5.0']
end
