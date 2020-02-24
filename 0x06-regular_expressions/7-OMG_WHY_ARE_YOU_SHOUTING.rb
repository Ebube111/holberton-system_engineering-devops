#!/usr/bin/env ruby

regex = /[[:upper:]]/
en = ""
arg = ARGV[0]
arg.scan(regex) do |match|
		en = en + match
end
puts en.to_s
