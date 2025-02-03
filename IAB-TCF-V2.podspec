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
  
  # Gebruik de juiste paden voor source files
  spec.source_files  = 'IAB-TCF-V2/**/*.{h,m}'
  
  spec.public_header_files = 'IAB-TCF-V2/**/*.h'
  
  spec.requires_arc = true
  
  spec.swift_versions = ['5.0']
end
