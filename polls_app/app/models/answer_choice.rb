# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  text        :string
#  question_id :integer
#

class AnswerChoice < ApplicationRecord
    belongs_to :question,
        foreign_key: :question_id,
        class_name: :Question 

    has_one :response,
        foreign_key: :answer_choice_id,
        class_name: :Response
end
