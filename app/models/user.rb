class User < ApplicationRecord
  #  devise :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :validatable

  # after_create :set_default_role
  belongs_to :role

  before_save { self.email = email.downcase }
  has_secure_password

  def check_date
    errors.add(:date_birth, "يجب أن يكون أقل من 150 عامًا في الماضي") if date_birth <= (Time.now.to_date - 125.years)
    errors.add(:date_birth, "لا يجب أن يكون التاريخ فى المستقبل") if date_birth >= (Time.now.to_date)
  end

  # validates :cv, length: {minimum: 16, too_short: " يجب أن لا يقل عن 16 من [ الأحرف ]"}, allow_blank: true
  # validates :cv, length: {maximum: 800, too_long: " يجب أن لا يزيد عن 16 من [ الأحرف ]"}, allow_blank: true

  RELIGIONS = [["Moslim", "Moslim"], ["Chrestian", "Chrestian"]]
  GENDERS = [["male", "male"], ["femal", "femal"]]

  # private
  # def set_default_role
  #   self.update(role_id: Role.find_by(code: "default").id)
  # end

end
