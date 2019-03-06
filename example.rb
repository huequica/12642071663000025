require "#{Dir.pwd}/unzen_converter/main"

unzen_lang = Unzen_lang.new
puts unzen_lang.convert(ARGV[0])
