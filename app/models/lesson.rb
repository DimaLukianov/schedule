class Lesson < ApplicationRecord
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
  belongs_to :user
  belongs_to :subject
  belongs_to :group
end
