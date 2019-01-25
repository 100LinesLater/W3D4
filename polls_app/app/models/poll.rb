# == Schema Information
#
# Table name: polls
#
#  id        :bigint(8)        not null, primary key
#  title     :string
#  author_id :integer
#

class Poll < ApplicationRecord

    belongs_to :user,
        foreign_key: :author_id,
        class_name: :User

    has_many :questions,
        foreign_key: :poll_id,
        class_name: :Question

end
