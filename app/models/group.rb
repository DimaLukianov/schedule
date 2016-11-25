class Group < ApplicationRecord
  belongs_to :institution
  validates :name, :institution_id, presence: true
end
