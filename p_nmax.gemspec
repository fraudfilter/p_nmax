Gem::Specification.new do |s|
  s.name        = 'p_nmax'
  s.version     = '0.0.3'
  s.date        = Date.today.to_s
  s.summary     = "Print n maximum numbers from file"
  s.description = s.summary
  s.authors     = ["Vladimir Ryashentsev"]
  s.email       = ["qo-op@list.ru"]
  s.executables = ["nmax"]
  s.files       = Dir['Rakefile','{bin,lib,test}/**/*']

  s.add_development_dependency 'minitest', '~> 0'
  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'bundler', '~> 0'
end


