# BlueberryRedactor
Blueberry Redactor 2 - Rails engine for easier implementation Redactor 2 wysiwyg with CarrierWave image upload to Cloudinary.

## Usage

## Installation
Add this line to your application's Gemfile:

```ruby
  gem 'blueberry_redactor', github: 'blueberryapps/blueberry_redactor'
```

And then execute:

```ruby
  $ rails generate blueberry_redactor:install
```

```ruby
  $ rake db:migrate
```

Add to your `admin.coffee`:

```coffee
  #= require blueberry_redactor
```

Add to your `admin.sass`:

```sass
  @import blueberry_redactor
```

Add to your `routes.rb`:

```ruby
  mount BlueberryRedactor::Engine => '/blueberry_redactor'
```

For each textarea that you want to use with Redactor,
add the "redactor" class and ensure it has a unique ID:

```html.erb
<%= text_area_tag :editor, "", :class => "redactor", :rows => 40, :cols => 120 %>
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
