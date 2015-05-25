# coding: utf-8
lib = File.expand_path('../lib', _FILE_)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = "IPAD AIR"
  spec.version        = '1.0'
  spec.authors        = ["Thuy Dinh"]
  spec.email          = ["thuydinhdo@gmail.com"]
  spec.summary        = %q{Short summary of your projecy} 
  spec.desciption     = %q{Longer description of your project}
  spec.homepage       = "http://domainforproject.com/"
  spec.license        = "MIT"

  spec.files          = ['lib/NAME.rb']
  spec.executables    = ['bin/NAME']
  spec.test_file      = ['tests/test_NAME.rb']
  spec.require_paths  = ["lib"]