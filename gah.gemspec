require File.expand_path("../lib/gah", __FILE__)

Gem::Specification.new do |s|
  
  s.name        = 'gah'
  s.version     = Gah::VERSION
  
  s.summary     = "The Github API Helper"
  s.description = "gah allows you to access some features that Github didn't made available in the APIs"

  s.authors  = ["Ermenegildo Fiorito"]
  s.homepage = 'http://github.com/fyskij/gah'
  s.email    = 'fyskij@gmail.com'

  s.require_paths = %w[lib]
  s.files = %w( README.md )
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("test/*")
  
  s.test_files = s.files.select { |path| path =~ /^test\/tests\/test_.*\.rb/ }
end
