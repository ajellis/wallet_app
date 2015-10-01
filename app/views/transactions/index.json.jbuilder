json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :type, :receiver, :amount
  json.url transaction_url(transaction, format: :json)
end
