json.array!(@cards) do |card|
  json.extract! card, :id, :english_field, :foreign_field, :pronunciation, :image
  json.url card_url(card, format: :json)
end
