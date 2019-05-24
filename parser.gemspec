# -*- enconding: utf 8 -*-

requiere File.expand.path('../lib/parser/version/', __FILE__)
Gem::Specification.new do |gem|
  gem.authors	    = ["link"]
  gem.email	    = ["maked@protonmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary	    = %q{TODO: Write a gem summary}
  gem.homepage      = ""
 
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "parser"
  gem.require_paths = ["lib"]
  gem.version       = parser::VERSION

  #gem.add_development_dependency "rspec"
  gem.add_dependency "exifr"
  gem.add_dependency "benchmark"
  gem.add_dependency "mini_exiftool"
end

