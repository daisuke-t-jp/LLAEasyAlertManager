
Pod::Spec.new do |s|
s.name         = "LLAEasyAlertManager"
s.version      = "1.0.0"
s.summary      = "LLAEasyAlertManager is class for easy use of UIAlertController."
s.homepage     = "https://github.com/daisuke-t-jp/LLAEasyAlertManager"
s.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLAEasyAlertManager/master/doc/header.png"
s.license      = "MIT"
s.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }
s.ios.deployment_target = "10.0"
s.platform       = :ios, "10.0"
s.swift_version  = "4.2"
s.source       = { :git => "https://github.com/daisuke-t-jp/LLAEasyAlertManager.git", :tag => "1.0.0" }
s.source_files  = 'LLAEasyAlertManager/LLAEasyAlertManager/*.{h,swift}'
end
