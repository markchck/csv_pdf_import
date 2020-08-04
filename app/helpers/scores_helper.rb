module ScoresHelper
    def question_scored_by_user?(question, user)
        if user == nil
            return false
        else
            score = Score.find_by(question_id: question.id, user_id: user.id )
            return score.present? ? true : false
        end
    end
end
