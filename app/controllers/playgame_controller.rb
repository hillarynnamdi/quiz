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

  	if params[:options].nil?

    @output="Choose an answer";


    elsif @find_id.correct==params[:options]

  	@output="Answer is correct"

	else	

	@output="Answer is wrong"
  		

  	end



  	
  end
end
