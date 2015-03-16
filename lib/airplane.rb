class Airplane
  attr_reader :type, :wing_loading, :horsepower, :running, :flying

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @running = false
    @flying = false
  end

  def start
    if @running
      "airplane already started"
    else
      @running = true
      "airplane started"
    end
  end

  def takeoff
    if flying
      "airplane already launched"
    elsif running
      @flying = true
      "airplane launched"
    else
      "airplane not started, please start"
    end
  end
end
