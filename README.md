# yard-rails

* [github.com/cpence/yard-rails](http://github.com/cpence/yard-rails/)
* [github.com/cpence/yard-rails/issues](http://github.com/cpence/yard-rails/issues)
* Charles Pence (charles at charlespence.net)

## Description

A YARD plugin for parsing the custom Ruby syntax added by Rails.

If you are using YARD >= 0.6, you will need to enable the plugin manually.  Add
the following line to your `.yardopts` file:

    --plugin yard-rails

For older versions of YARD, all plugins are loaded automatically.

## Features

Parses the following statements:

    attr_accessible :attr

    cattr_reader :attr

    cattr_writer :attr

    cattr_accessor :attr

    mattr_reader :attr

    mattr_writer :attr

    mattr_accessor :attr

If you know of more Rails-specific DSL that should be included in this plugin,
feel free to create an issue here on GitHub, and I'll be happy to include it.

## Requirements

* [yard](http://yardoc.org) >= 0.4.0

## Install

    $ sudo gem install yard-rails

## License

See LICENSE.txt for license information.

## Thanks

Thanks to Postmodern's `yard-dm` gem, which provided much of the framework
I've used to package `yard-rails`.
