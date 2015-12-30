json.array!(@answers) do |answer|
  json.extract! answer, :id, :nickname, :order, :amount, :payed, :command_id
  json.url command_answers_url(@command, answer, format: :json)
end
