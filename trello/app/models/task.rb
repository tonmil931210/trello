class Task < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, :duration, :start_date, :finish_date, :autor, presence: true
end
