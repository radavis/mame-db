class MAME::XML

end

#!/usr/bin/env ruby

require "nokogiri"
require 'active_support/core_ext/object/blank'

selector = "//machine/display[@rotate=90 or @rotate=270]"  # roms w/ horizontal orientation
doc = Nokogiri::XML(open("mame.xml"))

puts MameRom::HEADERS.join(";")
doc.xpath(selector).each do |el|
  mame_rom = MameRom.new(el.parent)
  puts mame_rom.to_row if mame_rom.parent?
end
