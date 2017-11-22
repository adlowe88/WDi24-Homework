class BudsController < ApplicationController
  def index
    @buds = Bud.all
  end

  def show
    @bud = Bud.find params[:id]
  end

  def new
    @bud = Bud.new
  end

  def edit
    @bud = Bud.find params[:id]
  end

  def create
    bud = Bud.create bud_params
    redirect_to bud
  end

  def update
    bud = Bud.find params[:id]
    bud.update bud_params
    redirect_to bud
  end

  def destroy
    bud = Bud.find params[:id]
    bud.destroy
    redirect_to buds_path
  end

  private
  def bud_params
    params.require(:bud).permit(:name, :strain, :ancestors, :THC, :CBD, :image, :artist_id)
  end
end
