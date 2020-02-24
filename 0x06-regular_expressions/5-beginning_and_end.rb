#!/usr/bin/env ruby

regex = /h.n/i
arg = ARGV[0]
arg.scan(regex) do |match|
		puts match.to_s
end
