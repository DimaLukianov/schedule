class User < ApplicationRecord
  has_many :lessons
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :teachers, -> { where(is_teacher: true) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def role
    is_teacher ? 'Teacher' : 'User'
  end
end
