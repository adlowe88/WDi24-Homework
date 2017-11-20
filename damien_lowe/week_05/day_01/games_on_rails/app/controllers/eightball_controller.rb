class EightballController < ApplicationController

  def game
    @question = params[:question]
    
  end

end
