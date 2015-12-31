class Answer < ActiveRecord::Base
  after_save :update_command_total

  belongs_to :command

  private
  def update_command_total
    self.command.update_total
  end
end
