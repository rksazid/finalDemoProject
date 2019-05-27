class Semester < ApplicationRecord
  has_many :courses
  belongs_to :user, optional: true
end
