class Car

  def initialize(make, model_year)
    @make = make
    @model_year = model_year
  end

  #to be called in the view

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed = "0km/hr"
  end

  def accelerate
    @speed + 10
  end 
   # Necessary for YAML
  #  def make = new_make
  #    @make = new_make
  #  end
   #
  #  def model_year = new_model_year
  #    @model_year = new_model_year
  #  end

end
