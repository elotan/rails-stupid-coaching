class QuestionsController < ApplicationController
  def ask


  end

  def answer
   # doit lire la question depuis les params et créer une variable d'instance @answer
   # puis l'envoyer à la vue qui devra l'afficher

    @question = params[:question]

    if @question == "i am going to work"
      @answer = "great"
    elsif @question.end_with?("?")
      @answer = "silly question !"
    else
      @answer = "i don't care"
    end



  end
end


# si le message == "i am going to work" answer -> "great"
# si le message contient un point d'interrogation answer -> "silly question.."
# else answer -> "i don't care"
