class Site::AnswerController < SiteController
  def question
    @answer = Answer.find(params[:answer])
    UserStatistic.set_statisctic(@answer, current_user)
    end 
  end

