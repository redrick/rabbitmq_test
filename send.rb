#!/usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch   = conn.create_channel

q    = ch.queue("hello", durable: true)
ch.default_exchange.publish("neco Hello World!", routing_key: q.name, persistent: true)
puts " [x] Sent 'Hello World!'"

conn.close
