Pod::Spec.new do |s|
  s.name                = "ExpressConstraints"
  s.version             = "1.0.0"
  s.summary             = "Lightweight layout framework for Swift and Objective-C."
  s.homepage            = "https://github.com/erlswtshrt/ExpressConstraints"
  s.description         = "Express Constraints is a lightweight layout / constraint framework for Swift and Objective-C. In other words, a programatic alternative to the Storyboard! The implementation is a thin wrapper on NSConstraints offered as a UIView extension."
  s.license             = { :type => "MIT", :file => "LICENSE.txt" }
  s.author              = { "John Earle" => "johnearle01@gmail.com" }
  s.social_media_url    = "https://twitter.com/mangomoscato"
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/erlswtshrt/ExpressConstraints.git", :tag => "v1.0.0" }
  s.source_files        = "ExpressConstraints/UIView+ExpressConstraints.swift"
  s.swift_version       = "3.2"
end
