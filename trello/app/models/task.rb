class Task < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, :duration, :start_date, :finish_date, :autor, presence: true
  validate :format_date

  private
  def format_date
    unless self.start_date <= self.finish_date
      errors.add(:start_date, 'cant exceed to finish date')
    end
  end
end
