class BudsController < ApplicationController

  def index
    @buds = Bud.all
  end

  def new

  end

  def create
    # raise params.inspect
    bud = Bud.new
    bud.name = params[:name]
    bud.family = params[:family]
    bud.ancestors = params[:ancestors]
    bud.THC = params[:THC]
    bud.CBD = params[:CBD]
    bud.image = params[:url]
    bud.save

    redirect_to buds_path
  end

  def show
    @buds = Bud.find params[:id]
  end

  def edit
    @buds = Bud.find params[:id]
  end

  def update
    bud = Bud.find params[:id]
    bud.update :name => params[:name], :family => params[:family], :ancestors => params[:ancestors], :THC => params[:THC], :CBD => params[:CBD], :image => params[:image]
    redirect_to bud_path(bud.id)
  end

  def destroy
    bud = Bud.find params[:id]
    bud.destroy
    redirect_to buds_path
  end
end
