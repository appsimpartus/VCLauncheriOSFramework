
Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '11.0'
s.name = "VCLauncheriOSFramework"
s.summary = "VCLauncheriOSFramework lets the host app lunch virtual class room using safari view controller."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Impartus" => "apps@impartus.com" }

# 5
s.homepage = "https://github.com/appsimpartus/VCLauncheriOSFramework"

# 6
s.source = { :git => "https://github.com/appsimpartus/VCLauncheriOSFramework.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.framework = "SafariServices"

# 8
s.source_files = "VCLauncheriOSFramework/**/*.{swift}"

# 9
s.resources = "VCLauncheriOSFramework/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5.5"

end
