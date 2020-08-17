class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @question = coach_answer
  end

  def coach_answer
    if @question.downcase == 'i am going to work'
      'Great!'
    elsif @question.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif @question == ''
      "You didn't asked me nothing!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
