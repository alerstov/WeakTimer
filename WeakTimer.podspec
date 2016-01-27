Pod::Spec.new do |s|
  s.name             = "WeakTimer"
  s.version          = "0.1.1"
  s.summary          = "Block based weak timer"
  s.homepage         = "https://github.com/alerstov/WeakTimer"
  s.license          = 'MIT'
  s.author           = { "Alexander Stepanov" => "alerstov@gmail.com" }
  s.source           = { :git => "https://github.com/alerstov/WeakTimer.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'WeakTimer/*.{h,m}'
end
