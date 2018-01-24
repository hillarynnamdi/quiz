class PlaygameController < ApplicationController
	  before_action :authenticate_user!

  
  def index
  		@quizzes=Quiz.all.order("RANDOM()")
  		@quizcount=Quiz.all.count


  		
  end
  

  def submit_quiz
  	@quizcount=Quiz.all.count
  	@question_id=params[:question_id]
    @optio=params[:options]
  	@index=params[:index]
  	@find_id=Quiz.find(@question_id)
  	
  end

  def questn
    @index=params[:id]

    
  end
end
