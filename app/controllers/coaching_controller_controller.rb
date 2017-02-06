class CoachingControllerController < ApplicationController
  def answer_enhanced(your_message)
    # TODO: return coach answer to your_message
    if your_message == your_message.upcase
      add_message = "I can feel your motivation!"
    else
      add_message = ""
    end
    if your_message.include? "?"
      return add_message + " " + "Silly question, get dressed and go to work!"
    elsif your_message.downcase == "i am going to work right now!"
      return ""
    else
      return add_message + " " + "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @ask = params[:query]
    @answer = answer_enhanced(@ask)
  end

  def ask
  end
end


