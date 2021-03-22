class Teacher < ApplicationRecord
  belongs_to :stage
  belongs_to :subject

  has_many :accounts, as: :accountable

  validates :name, presence: { :message => "لايجب أن يكون فارغا" }
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: "مسموح باﻷحرف فقط" }
  validates :name, length: { minimum: 2, too_short: " يجب أن لا يقل عن 2 من [ الأحرف ]" }
  validates :name, length: { maximum: 15, too_long: " يجب أن لا يزيد عن 15 من [ الأحرف ]" }

  validates :address, presence: { :message => "لايجب أن يكون فارغا" }
  validates :address, format: { with: /\A[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9 ]*\z/, message: "مسموح باﻷحرف والأرقام فقط" }
  validates :address, length: { maximum: 70, too_long: " يجب أن لا يزيد عن 70 من [ الأحرف ]" }

  validates :gender, presence: { :message => "لايجب أن يكون فارغا" }
  validates :gender, format: { with: /\A[0-9a-zA-Z]*\z/ }
  validates :gender, length: { in: 1..10, message: "The number of characters is not valid" }, format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters" }

  validates :phone, length: { maximum: 13, too_long: " يجب أن لا يزيد عن 13 من [ الأحرف ]" }
  validates :phone, length: { minimum: 11, too_short: " يجب أن لا يقل عن 11 من [ الأحرف ]" }
  validates :phone, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i, message: "يسمح فقط بالأرقام الموجبة بدون مسافات" }
  validates :phone, :uniqueness => { :message => "هذا الرقم مستخدم بالفعل" }

  validates :email, presence: { :message => "لايجب أن يكون فارغا" }, allow_blank: true
  validates :email, format: { with: /\A[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\z/, message: "تأكد من  الكتابه بشكل صحيح" }, allow_blank: true
  validates :email, :uniqueness => { :message => "هذا الأيميل مستخدم بالفعل" }

  validates :subject_id, presence: { :message => "لايجب أن يكون فارغا" }
  validates :stage_id, presence: { :message => "لايجب أن يكون فارغا" }

  #  validates_each :date_birth do |record, attr, value|
  #    record.errors.add(attr, 'يجب أن يكون أقل من 150 عامًا في الماضي') if value <= (Time.now.to_date - 125.years)
  # end

  #  validates_each :date_birth do |record, attr, value|
  #    record.errors.add(attr, 'لا يجب أن يكون تاريخ فى المستقبل') if value >= (Time.now.to_date )
  # end

  # validate :check_date

  def check_date
    errors.add(:date_birth, "يجب أن يكون أقل من 150 عامًا في الماضي") if date_birth <= (Time.now.to_date - 125.years)
    errors.add(:date_birth, "لا يجب أن يكون التاريخ فى المستقبل") if date_birth >= (Time.now.to_date)
  end

  # validates :cv, length: {minimum: 16, too_short: " يجب أن لا يقل عن 16 من [ الأحرف ]"}, allow_blank: true
  # validates :cv, length: {maximum: 800, too_long: " يجب أن لا يزيد عن 16 من [ الأحرف ]"}, allow_blank: true

  RELIGIONS = [["Moslim", "Moslim"], ["Chrestian", "Chrestian"]]
  GENDERS = [["male", "male"], ["femal", "femal"]]

  # validates :name, presence: { :message => "لايجب أن يكون فارغا" }
  # validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: "مسموح باﻷحرف فقط" }
  # validates :name, length: { minimum: 2, too_short: " يجب أن لا يقل عن 2 من [ الأحرف ]" }
  # validates :name, length: { maximum: 15, too_long: " يجب أن لا يزيد عن 15 من [ الأحرف ]" }
end
