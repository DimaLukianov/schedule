class Institution < ApplicationRecord
  has_many :groups
  has_many :subjects
  validates :name, presence: true
end
