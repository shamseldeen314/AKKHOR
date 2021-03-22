class Book < ApplicationRecord
  validates :name, :tybe, :language, :section, presence: true

  validates :name, format: { with: /\A[a-zA-Z1-9 ]+\z/, message: "only allows letters" }
  validates :name, length: { minimum: 2, too_short: " يجب أن لا يقل عن 2 من [ الأحرف ]" }
  validates :name, length: { maximum: 5, too_long: " يجب أن لا يزيد عن 5 من [ الأحرف ]" }

  validates :tybe, length: { minimum: 1 }
  validates :tybe, length: { in: 1..50 }

  validates :language, length: { minimum: 1 }
  validates :language, length: { in: 1..50 }

  validates :section, length: { minimum: 1 }
  validates :section, length: { in: 1..50 }
end
