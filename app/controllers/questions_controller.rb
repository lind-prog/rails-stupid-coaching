class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]
    @coachanswer = ''
    if params[:questions] == 'I am going to work'
      @coachanswer = 'Great!'
    elsif params[:questions].end_with?('?')
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
