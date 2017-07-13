$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'blueberry_redactor/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'blueberry_redactor'
  spec.version     = BlueberryRedactor::VERSION
  spec.authors     = ['Tonda Pleskac', 'Ondrej Bartas']
  spec.email       = ['apleskac@blueberry.io', 'obrartas@blueberry.io']

  spec.summary     = 'Redactor 2 & Cloudinary - Rails engine.'
  spec.description = 'Blueberry Redactor 2 - Rails engine for easier implementation Redactor 2 wysiwyg with image upload to Cloudinary'
  spec.homepage    = 'http://github.com/blueberry/blueberry_redactor'
  spec.license     = 'MIT'

  spec.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'coffee-rails', '~> 4.2'
  spec.add_dependency 'rails', '~> 5.0'
  spec.add_dependency 'carrierwave', '~> 0.11.2'
  spec.add_dependency 'cloudinary', '~> 1.8.1'
  spec.add_dependency 'mini_magick', '~> 4.7.0'
  spec.add_dependency 'codemirror-rails', '~> 5.16.0'

  spec.add_development_dependency 'sqlite3'
end
