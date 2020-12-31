
Pod::Spec.new do |spec|

   spec.name         = "DKControl"
  spec.version      = "1.0.0"
  spec.summary      = "This Is Such DKControll"
  spec.description  = "This Is Such DKControll testing purpose"

  spec.homepage     = "https://github.com/TrivediSagar24/DKControl"

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


   spec.author             = { "sagar trivedi" => "trivedi.sagar24@gmail.com" }
 
   spec.platform     = :ios, "11.0"
   spec.swift_version = "5"

 
  spec.source       = { :git => "https://github.com/TrivediSagar24/DKControl.git", :tag => "#{spec.version}" }

  spec.source_files  = "DKControl/**/*.{h,m,swift}"


  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


    spec.requires_arc     = true
    spec.default_subspec  = 'App'

    spec.subspec 'App' do |app|
        app.resource_bundles = {'DKControl' => ['DKControl/Resources/*.*']}
    end

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
