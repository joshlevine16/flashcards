json.array!(@cards) do |card|
  json.extract! card, :id, :word, :definition, :pronunciation, :image
  json.url card_url(card, format: :json)
end
