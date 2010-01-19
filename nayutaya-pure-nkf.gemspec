
Gem::Specification.new do |s|
  s.specification_version     = 2
  s.required_rubygems_version = Gem::Requirement.new(">= 0")
  s.required_ruby_version     = Gem::Requirement.new(">= 1.8.6")

  s.name    = "nayutaya-pure-nkf"
  s.version = "0.0.1"
  s.date    = "2010-01-19"

  s.authors = ["Yuya Kato"]
  s.email   = "yuyakato@gmail.com"

  s.summary     = "pure-nkf"
  s.description = "pure-nkf"
  s.homepage    = "http://github.com/nayutaya/pure-nkf/"

  s.rubyforge_project = nil
  s.has_rdoc          = false
  s.require_paths     = ["lib"]

  s.files = [
    "lib/pure_nkf/core.rb",
    "lib/pure_nkf/version.rb",
    "lib/pure_nkf.rb",
    "nayutaya-pure-nkf.gemspec",
    "nayutaya-pure-nkf.gemspec.erb",
    "Rakefile",
    "README.md",
    "test/core_test.rb",
    "test/test_helper.rb",
  ]
  s.test_files = [
    "test/core_test.rb",
    "test/test_helper.rb",
  ]
  s.extra_rdoc_files = []
end
