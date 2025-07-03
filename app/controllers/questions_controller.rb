class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]

    if @answer == "I am going to work"
     @coach_answer = 'Great!'
    elsif @answer.include?('?')
      @coach_answer =  'Silly question, get dressed and go to work!'
    else
      @coach_answer =  "I don't care, get dressed and go to work!"
    end
  end
end

    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    # 'I am going to work'
