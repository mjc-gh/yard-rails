# yard-rails

* [github.com/cpence/yard-rails](http://github.com/cpence/yard-rails/)
* [github.com/cpence/yard-rails/issues](http://github.com/cpence/yard-rails/issues)
* Charles Pence (charles at charlespence.net)

## Description

A YARD plugin for parsing the custom Ruby syntax added by Rails.

Once yard-rails is installed, YARD will automatically load the plugin whenever
the `yardoc` utility is run on a project.

## Features

Parses the following statements:

    cattr_reader :attr

    cattr_writer :attr

    cattr_accessor :attr

    mattr_reader :attr

    mattr_writer :attr

    mattr_accessor :attr

## Requirements

* [yard](http://yardoc.org) >= 0.4.0

## Install

    $ sudo gem install yard-rails

## License

See LICENSE.txt for license information.

## Thanks

Thanks to Postmodern's `yard-dm` gem, which provided much of the framework
I've used to package `yard-rails`.
