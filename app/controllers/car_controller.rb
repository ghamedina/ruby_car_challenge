class CarController < ApplicationController
  def index
    @make = params[:make] unless params[:make].nil?
    @model_year = params[:model_year] unless params[:model_year].nil?
  end

  def simulator
    if params.has_key?(:make) && !params[:make].strip.empty? &&
      params.has_key?(:model_year) && !params[:model_year].strip.empty?
      # create a car_inof object with make and model_year submitted
      car1 = Car.new(params[:make], params[:model_year], params[:car_color])
      #save car_info object in session so it can be accessed in Car Status(other page)
      session[:car1] = car1.to_yaml
      #redirect to the Car Status page
      redirect_to '/car/status'
    else
      @car_missing = "You didn't fill out your car information!"
      render 'simulator.html.erb'
    end

    #then we redirect to simulation page
  end

  def status
    Car
    @car = YAML.load(session[:car1])
  end

  def accelerate
    Car
    @car = YAML.load(session[:car1])
    @car.accelerate
    session[:car1] = @car.to_yaml
    redirect_to '/car/status'
  end

  def brake
    Car
    @car = YAML.load(session[:car1])
    @car.brake
    session[:car1] = @car.to_yaml
    redirect_to '/car/status'
  end

  def lights
    Car
    @car = YAML.load(session[:car1])
    @car.lights
    session[:car1] = @car.to_yaml
    redirect_to '/car/status'
  end

  def parking_status
    Car
    @car = YAML.load(session[:car1])
    @car.parking_status
    session[:car1] = @car.to_yaml
    redirect_to '/car/status'
  end
end #end for the class
