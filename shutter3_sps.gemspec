Gem::Specification.new do |s|
  s.name = 'shutter3_sps'
  s.version = '0.1.2'
  s.summary = 'Publishes Shutter3 (see the Shutter3 gem) button event ' + 
      'notifications through the SimplePubSub (SPS) messaging broker.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/shutter3_sps.rb']
  s.add_runtime_dependency('shutter3', '~> 0.1', '>=0.1.3')
  s.add_runtime_dependency('sps-pub', '~> 0.5', '>=0.5.5')
  s.signing_key = '../privatekeys/shutter3_sps.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/shutter3_sps'
end
