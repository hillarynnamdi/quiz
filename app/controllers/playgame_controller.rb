class PlaygameController < ApplicationController
	  before_action :authenticate_user!

  
  def index
  		@quizzes=Quiz.all
  		@quizcount=Quiz.all.count
  		
  end
  

  def submit_quiz
  	@quizcount=Quiz.all.count
  	@question_id=params[:question_id]
  	@index=params[:index]
  	@find_id=Quiz.find(@question_id)

 
    if @find_id.correct==params[:options]

  	@output="Answer is correct"

  	elsif params[:options].nil?
  		
  	@error="Choose an answer"

	else	

	@output="Answer is wrong"
  		

  	end



  	
  end
end
