Gem::Specification.new do |s|
  s.name        = 'docker-env'
  s.version     = File.read("VERSION").chomp # file managed by version gem...
  s.authors     = ["Rick Frankel"]
  s.email       = ["docker-env@cybercode.nyc"]
  s.summary     = 'A tool to switch docker for mac environments'
  s.description = 'docker-env will setup soft-links and switch between docker qcow images.'
  s.homepage    = "https://github.com/cybercode/docker-env"
  s.licenses    = ["MIT"]
  s.platform    = Gem::Platform::RUBY
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  s.bindir = 'bin'
  s.executables << 'docker-env'

  s.add_development_dependency('rake')
  s.add_development_dependency('pry')
  s.add_development_dependency('pry-byebug')

  s.add_runtime_dependency('version')
  s.add_runtime_dependency('gli','2.14.0')
end
