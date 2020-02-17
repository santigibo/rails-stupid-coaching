class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    a = 'Silly question, get dressed and go to work!'
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'ASk something! Go back to work' if @question.nil? || @question == ""
    @answer = 'Great' if @question == 'I am going to work'
    @answer = a if @question.include?('?')
    # @answer = 'Great'
  end
end
