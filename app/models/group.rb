class Group < ApplicationRecord
  belongs_to :institution
  has_many :groups
  has_many :lessons
  validates :name, :institution_id, presence: true
end
