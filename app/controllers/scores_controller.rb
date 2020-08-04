class ScoresController < ApplicationController
  before_action :authenticate_user!
  
  def create
    score = Score.find_by(question_id: params[:question_id], user_id: current_user.id)
    
    if score.present?
      score.destroy
    else
      Score.create(question_id: params[:question_id], user_id: current_user.id)
    end
    
    redirect_back(fallback_location: root_path)
  end
end
