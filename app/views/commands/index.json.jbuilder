json.array!(@commands) do |command|
  json.extract! command, :id, :date, :description, :limit_date, :payment, :state, :total
  json.url command_url(command, format: :json)
end
