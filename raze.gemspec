Gem::Specification.new do |s|
  s.name        = 'raze'
  s.version     = '0.0.3'
  s.date        = '2016-09-11'
  s.summary     = 'Gem for flattening collections'
  s.description = <<-descr
  Provides methods to flatten nested collections into
  one dimensional structure that is easy to iterate over.
  descr
  s.authors     = ["Austen Madden"]
  s.email       = 'maddenausten@gmail.com'
  s.files       = ["lib/raze.rb"]
  s.homepage    =
    'https://github.com/austenmadden/raze'
  s.license     = 'MIT'
  s.add_development_dependency "rspec"
end
