class Stage < ApplicationRecord
  has_many :subjects
  has_many :students
  has_many :techers

  validates :name, presence: { :message => "لايجب أن يكون فارغا" }
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: "مسموح باﻷحرف فقط" }
  validates :name, length: { minimum: 2, too_short: " يجب أن لا يقل عن 2 من [ الأحرف ]" }
  validates :name, length: { maximum: 70, too_long: " يجب أن لا يزيد عن 70 من [ الأحرف ]" }
end
