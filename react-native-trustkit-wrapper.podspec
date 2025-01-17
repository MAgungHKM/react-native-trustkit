require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-trustkit-wrapper"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/MAgungHKM/react-native-trustkit.git" }

  s.source_files = "ios/**/*.{h,m}"

  s.dependency "React-Core"
  s.dependency "TrustKit", "~> 3.0.3"
end
