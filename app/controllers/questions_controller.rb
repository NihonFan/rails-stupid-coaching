class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # t = Time.new

    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      # @answer = "it is now #{t.hour}:#{t.min}"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
