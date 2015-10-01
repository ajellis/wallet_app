json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :transaction_type, :receiver, :amount
  json.url transaction_url(transaction, format: :json)
end
