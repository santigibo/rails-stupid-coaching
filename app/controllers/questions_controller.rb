class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I'm going to work"
      @answer = 'Great'
    elsif !@question.nil? && @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @question = "" if @question.nil?
  end
end
