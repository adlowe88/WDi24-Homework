class BudsController < ApplicationController

  def index
    @buds = Bud.all
  end

  def new

  end

  def create
    bud = Bud.new
    bud.name = params[:name]
    bud.image = params[:url]
    bud.orbit = params[:orbit]
    bud.diameter = params[:diameter]
    bud.mass = params[:mass]
    bud.moons = params[:moons]
    bud.save

    redirect_to planets_path
  end

end
