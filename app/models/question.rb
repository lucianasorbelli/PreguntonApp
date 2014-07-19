class Question < ActiveRecord::Base
  validates :email, presence: true
  validates :title, presence: true
  has_many :answers
end
