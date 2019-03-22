require "#{__dir__}/main"

unzen_lang = Unzen_lang.new
puts unzen_lang.convert(ARGV[0])
