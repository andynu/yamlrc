#!/usr/bin/env ruby
require 'yamlrc'
config = Yamlrc.load('config.yaml')
greeting = config[:messages][:greetings]

case Time.now.hour
when 6..9
  puts greeting[:morning]
when 9..18
  puts greeting[:midday]
when 18..22
  puts greeting[:evening]
when 22..24, 0..6
  puts greeting[:night]
end
