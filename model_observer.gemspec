$:.push File.expand_path("../lib", __FILE__)

require "model_observer/version"

Gem::Specification.new do |s|
  s.name        = "model_observer"
  s.version     = ModelObserver::VERSION
  s.authors     = ["Weihu Chen"]
  s.email       = ["cctiger36@gmail.com"]
  s.homepage    = "https://github.com/cctiger36/model_observer"
  s.summary     = "Help to find out duplicated model object creations."
  s.description = "A rails plugin to count the model object creations between each request, and help to find out the duplication."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
