SpreeMultiSeller
================

Introduction goes here.
	This extension is used to add multiple seller in spree project with seperate admin, and compatible with
	'spree_core', '~> 2.0.0'
	'ruby', '>= 1.9.3'
	'rails', '>=3.2.x'
Installation
------------

Add spree_multi_seller to your Gemfile:

```ruby
gem 'spree_multi_seller'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_multi_seller:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_multi_seller/factories'
```

Copyright (c) 2013 [Vishal Zambre], released under the New BSD License
