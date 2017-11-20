class SecretnumberController < ApplicationController

  def game2
  end

  def result
    array = [1, 2, 3, 4, 5, 6, 7, 8, 8, 10]
    @number = params[:number]
    @result = array.sample
    @win = "YOU HAVE WON"
    @lose = "YOU HAVE LOST"
  end

end
