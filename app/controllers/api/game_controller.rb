class Api::GameController < ApplicationController
  def name_game_action
    @input_name = params["name"].upcase
    render 'name_game_view.json.jbuilder'
  end

  def first_letter
    @name = params["name"]
    if @name.downcase[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Your name sucks"
    end
    render 'first_letter.json.jbuilder'
  end

    def segment_guess
      @number = params["my_number"].to_i
      target = 42
      if @number > target
        @message = "Too High, try something lower"
      elsif @number < target
        @message = "Too Low, you really should aim higher"
      else
        @message = "You got it, next beer's on me"
      end      

      render 'segment_guess.json.jbuilder'
    
    
  end
end