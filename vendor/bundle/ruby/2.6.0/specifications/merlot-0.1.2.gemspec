# -*- encoding: utf-8 -*-
# stub: merlot 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "merlot".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bala Paranj".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-06-13"
  s.description = "This gem enables you to get rich quick without doing any work.".freeze
  s.email = ["bparanj@gmail.com".freeze]
  s.homepage = "http://www.rubyplus.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Get rich quick.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<prawn>.freeze, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<posix-spawn>.freeze, ["~> 0.3.11"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12.5"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.5"])
    else
      s.add_dependency(%q<prawn>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<posix-spawn>.freeze, ["~> 0.3.11"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12.5"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
    end
  else
    s.add_dependency(%q<prawn>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<posix-spawn>.freeze, ["~> 0.3.11"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12.5"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
  end
end
