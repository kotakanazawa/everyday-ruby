class ObsucringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def diameters
    data.map do |cell|
      cell[0] + (cell[1] * 2)
    end
  end
end

class RevealingReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.map { |wheel| diameter(wheel) }
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.map do |cell|
      Wheel.new(cell[0], cell[1])
    end
  end
end
