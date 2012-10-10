# ZabbixSend

A Ruby implementation of Zabbix sender protocol.

## Installation

Add this line to your application's Gemfile:

    gem 'zabbix_send'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zabbix_send

## Usage

    sender = ZabbixSend::Sender.new
    sender.send("zabbixserver","zabbixhost","zabbixitem.key","value")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
