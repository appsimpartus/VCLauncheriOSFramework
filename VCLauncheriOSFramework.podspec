
Pod::Spec.new do |s|

# 1
spec.platform = :ios
spec.ios.deployment_target = '11.0'
spec.name = "VCLauncheriOSFramework"
spec.summary = "VCLauncheriOSFramework lets the host app lunch virtual class room using safari view controller."
spec.requires_arc = true

# 2
spec.version = "0.1.0"

# 3
spec.license = { :type => "MIT", :file => "LICENSE" }

# 4
spec.author = { "Impartus" => "apps@impartus.com" }

# 5
spec.homepage = "https://github.com/appsimpartus/VCLauncheriOSFramework"

# 6
spec.source = { :git => "https://github.com/appsimpartus/VCLauncheriOSFramework.git",
             :tag => "#{spec.version}" }

# 7
spec.framework = "UIKit"
spec.frmaework = "SafariServices"

# 8
spec.source_files = "VCLauncheriOSFramework/**/*.{swift}"

# 9
spec.resources = "VCLauncheriOSFramework/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
spec.swift_version = "5.5"

end
