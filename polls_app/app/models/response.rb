# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer
#  user_id          :integer
#

class Response < ApplicationRecord
    belongs_to :user, 
        foreign_key: :user_id,
        class_name: :User 

    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    has_one :question, 
        through: :answer_choice,
        source: :question

    def sibling_responses
        self.question.responses.where.not(id: self.id) 
    end

    def respondent_already_answered?
        
    end
end
