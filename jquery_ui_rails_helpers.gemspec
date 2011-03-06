# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jquery_ui_rails_helpers}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bearded Studio", "CodeOfficer"]
  s.date = %q{2011-03-06}
  s.description = %q{JQuery UI helpers you can use in your Rails apps}
  s.email = [""]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "init.rb",
    "install.rb",
    "jquery_ui_rails_helpers.gemspec",
    "lib/jquery_ui_rails_helpers.rb",
    "lib/jquery_ui_rails_helpers/accordion_helper.rb",
    "lib/jquery_ui_rails_helpers/jquery_ui_base.rb",
    "lib/jquery_ui_rails_helpers/tabs_helper.rb",
    "spec/jquery_ui_rails_helpers/tabs_helper_spec.rb",
    "spec/spec_helper.rb",
    "uninstall.rb"
  ]
  s.homepage = %q{https://github.com/beardedstudio/jquery_ui_rails_helpers}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{JQuery UI helpers you can use in your Rails apps}
  s.test_files = [
    "spec/jquery_ui_rails_helpers/accordion_helper_spec.rb",
    "spec/jquery_ui_rails_helpers/tabs_helper_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3"])
      s.add_development_dependency(%q<rspec>, [">= 2"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3"])
      s.add_dependency(%q<rspec>, [">= 2"])
      s.add_dependency(%q<rspec-rails>, [">= 2.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3"])
    s.add_dependency(%q<rspec>, [">= 2"])
    s.add_dependency(%q<rspec-rails>, [">= 2.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

