class RpsController < ApplicationController

  def game3

  end

  def rps_play
    array = ["rock", "paper", "scissor"]
    @throw = params[:throw]
    @game_throw = array.sample
    @win = "YOU HAVE WON"
    @lose = "YOU HAVE LOST"
  end

end
