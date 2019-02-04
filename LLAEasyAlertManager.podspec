Pod::Spec.new do |s|
s.name         = "LLAEasyAlertManager"
s.version      = "1.0.2"
s.summary      = "LLAEasyAlertManager is class for easy use of UIAlertController."
s.homepage     = "https://github.com/daisuke-t-jp/LLAEasyAlertManager"
s.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLAEasyAlertManager/master/doc/header.png"
s.license      = "MIT"
s.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }

s.requires_arc = true
s.swift_version  = "4.2"
s.ios.deployment_target = "10.0"

s.source       = { :git => "https://github.com/daisuke-t-jp/LLAEasyAlertManager.git", :tag => s.version }
s.source_files  = 'LLAEasyAlertManager/LLAEasyAlertManager/*.{h,swift}'
end
