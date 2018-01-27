Pod::Spec.new do |s|

  s.name         = "SignalProtocolSwift"
  s.version      = "0.9.4"
  s.summary      = "Swift implementation of the Signal Protocol for secure messaging."
  s.description  = <<-DESC
	SignalProtocolSwift is an almost pure Swift implementation of the Signal Protocol
	for secure end-to-end encrypted messaging. It should be compatible to 
	libsignal-protocol-c in terms of message compatibility and storage format.
                   DESC

  s.homepage     = "https://github.com/christophhagen/SignalProtocolSwift"
  s.license      = { :type => "MIT", :file => "License" }
  s.author    = "Christoph Hagen"

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "4.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/christophhagen/SignalProtocolSwift.git", :tag => "#{s.version}" }

  s.source_files  = "SignalProtocolSwift/**/*.{c,swift}, SignalProtocolSwift/Sources/SignalProtocolSwift.h"
  s.resources  = "SignalProtocolSwift/Curve25519/**/*.{h}"

  s.dependency "SwiftProtobuf", "~> 1.0.1"
end
