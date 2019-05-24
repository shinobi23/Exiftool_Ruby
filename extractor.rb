#!/usr/bin/env ruby 
require 'mini_exiftool'
require 'rubygems'
require 'benchmark'
require 'colorize'

if ARGV.size < 1
	puts "Usage: #{__FILE__} Image file required".red
	exit -1
end

	photo = MiniExiftool.new ARGV[0]
        Benchmark.bmbm do |x|
     	puts '[-=> PARSING ]'
       	x.report 'mini_exiftool' do
        x.report{   photo = MiniExiftool.new ARGV[0] }
        end
  photo.tags.each do |tag|
  x.report{puts "#{tag} : #{photo[tag]}".green}
end
	rescue MiniExiftool::Error => e
	$stderr.puts e.message
end
