# -*- encoding: utf-8 -*-
# stub: ruby-saml-idp 0.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-saml-idp".freeze
  s.version = "0.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lawrence Pit".freeze]
  s.date = "2018-03-01"
  s.description = "SAML IdP (Identity Provider) library in ruby".freeze
  s.email = "lawrence.pit@gmail.com".freeze
  s.homepage = "http://github.com/lawrencepit/ruby-saml-idp".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "SAML Indentity Provider in ruby".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<ruby-saml>.freeze, [">= 0"])
      s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.4.1"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<ruby-saml>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rails>.freeze, ["~> 3.2"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.4.1"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-saml>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rails>.freeze, ["~> 3.2"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.4.1"])
  end
end
