class Car

  def initialize(make, model_year)
    @make = make
    @model_year = model_year
    @speed = 0
    @lights = false
  end

  #to be called in the view

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

  def brake
    if @speed - 7 < 0
      @speed = 0
    else
      @speed = @speed - 7
    end
  end

  def lights
    # @lights
    #didnt work when we just put @lights without == false, why?
    if @lights == false #two equals to compare @lights to false
      @lights = true
      "On"
    elsif @lights == true
      @lights = false
      "Off"
    end
  end

end #ends Car class
