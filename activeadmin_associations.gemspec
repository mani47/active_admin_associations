# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_admin_associations/version"

Gem::Specification.new do |s|
  s.name        = "activeadmin_associations"
  s.version     = ActiveAdminAssociations::VERSION
  s.authors     = ["Brian Landau"]
  s.email       = ["brian.landau@viget.com"]
  s.homepage    = "http://github.com/vigetlabs/active_admin_associations"
  s.summary     = %q{This extends ActiveAdmin to allow for better editing of associations.}
  s.description = %q{This extends ActiveAdmin to allow for better editing of associations.}
  s.date = '2012-05-03'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extra_rdoc_files = ["README.md", "MIT_LICENSE.txt"]

  s.add_dependency 'activeadmin'
  s.add_dependency 'rails'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'multi_json'
end
