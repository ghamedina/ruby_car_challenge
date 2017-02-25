class Car

  def initialize(make, model_year, car_color)
    @make = make
    @model_year = model_year
    @car_color = car_color
    @speed = 0
    @lights = false
    @parking_status = true
  end

  #to be called in the view

  def make
    @make
  end

  def model_year
    @model_year
  end

  def car_color
    @car_color
  end
  
  def speed
    @speed
  end

  def accelerate
    if @parking_status == false
      @speed
    else
      @speed = @speed + 10
    end
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

  def parking_status
    if @speed > 0 ||  @parking_status == true
      @parking_status = false
      " Off"
    elsif @parking_status == false
      @parking_status = true
      " On"
    end
  end


end #ends Car class
