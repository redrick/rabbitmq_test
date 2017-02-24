#!/usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch   = conn.create_channel
q    = ch.queue("hello", durable: true)

puts " [*] Waiting for messages in #{q.name}. To exit press CTRL+C"
q.subscribe(block: true, manual_ack: true) do |delivery_info, properties, body|
  puts " [x] Received #{body}"
  sleep 1
  ch.ack(delivery_info.delivery_tag)
end
