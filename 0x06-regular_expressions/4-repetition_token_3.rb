#!/usr/bin/env ruby

regex = /hb[^o].*n/i
arg = ARGV[0]
arg.scan(regex) do |match|
		puts match.to_s
end
