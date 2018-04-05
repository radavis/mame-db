class MAME::ROM
  attr_reader :machine

  HEADERS = %w[
    name
    description
    year
    manufacturer
    resolution
  ].freeze

  def initialize(machine_element)
    @machine = machine_element
  end

  # if the 'rom_of' field is blank, this is a parent rom, and not a clone
  def parent?
    rom_of.blank?
  end

  # opposite of a parent rom
  def clone?
    !parent?
  end

  def name
    machine["name"]
  end

  def description
    machine.xpath("description").text
  end

  def display
    machine.at_xpath("display")
  end

  def manufacturer
    machine.xpath("manufacturer").text
  end

  def rom_of
    machine["romof"]
  end

  def year
    machine.xpath("year").text
  end

  def width
    display["width"]
  end

  def height
    display["height"]
  end

  def resolution
    "#{width}x#{height}" if width.present? && height.present?
  end

  def to_row(delimeter = ";")
    values.join(delimeter)
  end

  def values
    HEADERS.map { |header| send(header.to_sym) }
  end
end
