module CommandsHelper
  def update_command_total(command_id)
    total = Answer.where(command_id command_id).sum(:amount)
    command = Command.find(command_id)
    command.total=total
    command.save
  end
end
