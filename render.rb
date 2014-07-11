#!/usr/bin/env ruby
file = File.join(File.dirname(__FILE__), *%w[text.sv.md])
epub = File.join(File.dirname(__FILE__), *%w[anden.sv.epub])
meta = File.join(File.dirname(__FILE__), *%w[meta epub.xml])
#pandoc
system "pandoc #{file} -o #{epub} --epub-metadata=#{meta}" 
