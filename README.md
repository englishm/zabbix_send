# ZabbixSend

A Ruby implementation of the Zabbix sender protocol.

## Installation

Add this line to your application's Gemfile:

    gem 'zabbix_send'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zabbix_send

## Usage

    require 'zabbix_send'
    sender = ZabbixSend::Sender.new
    sender.send("zabbixserver","zabbixhost","zabbixitem.key","value")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Write tests for the new feature. (cf. `spec/`)
4. Write the new feature.
5. Commit your changes (`git commit -am 'Added some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request
