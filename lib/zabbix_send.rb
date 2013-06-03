require "zabbix_send/version"
require 'json'
require 'socket'
require 'time'

module ZabbixSend
  class Sender
    def self.build_message(zhost,zkey,zvalue,ztime)
      msg = {
        "request" => "sender data",
        "data" => [
          {
            "host" => zhost,
            "key" => zkey,
            "value" => zvalue,
            "clock" => ztime
          }]
      }
      body = JSON.generate msg
      data_length = body.bytesize
      data_header = "ZBXD\1".encode("ascii") + [data_length].pack("Q")
      data_to_send = data_header + body
    end

    def self.send_message(message, server, port)
      s = TCPSocket.new(server, port)
      s.write message
      response_header = s.recv(5)
      if not response_header == "ZBXD\1"
        puts "response: #{response_header}"
        raise 'Got invalid response'
      end
      response_data_header = s.recv(8)
      response_length = response_data_header.unpack("Q")[0]
      response_raw = s.recv(response_length)
      s.close
      response = JSON.load response_raw
    end

    def zabbix_send(zserver,zhost,zkey,zvalue,ztime=Time.now.to_i,zport=10051)
      z_send = Sender.build_message zhost, zkey, zvalue, ztime
      Sender.send_message z_send, zserver, zport
    end
  end
end