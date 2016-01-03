class Command < ActiveRecord::Base
  has_many :answers

  def update_total()
    self.total = self.answers.where(command_id: self.id).sum(:amount)
    save
  end

  scope :today, -> { where("date > ?", Date.today) }
end
