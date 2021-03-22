class Classroom < ApplicationRecord
  belongs_to :stage

  has_many :students
  has_many :teachers

  validates :name, presence: { :message => "لايجب أن يكون فارغا" }
end
