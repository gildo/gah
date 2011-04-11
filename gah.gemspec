require File.expand_path("../lib/gah", __FILE__)

Gem::Specification.new do |s|
  
  s.name              = 'gah'
  s.version           = Gah::VERSION
  
  s.summary     = ""
  s.description = ""

  s.authors  = [""]
  s.homepage = ''

  s.require_paths = %w[lib]
  s.files = %w( README.md )
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("test/*")
  
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
