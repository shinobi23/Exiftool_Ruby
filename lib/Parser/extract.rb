require 'exifr'
require 'benchmark'
require 'mini_exiftool'


list = DIR.path(entries)
n=50000

module Parser

  class extrator
	def folder
	puts "Post the folder path"
	path=gets
	path=path.chomp
	Dir.path(entries)
	end

        Benchmark.bmbm do |x|
        puts '[-=> Mini_ExifTool Module _[ Powerfull Slow ]_'
        x.report 'mini_exiftool' do
        n.times{ MiniExiftool.new(path).image_width }
        end 
  end
