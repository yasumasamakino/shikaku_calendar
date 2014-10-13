json.array!(@shikakus) do |shikaku|
  json.extract! shikaku, :id, :title, :detail
  json.url shikaku_url(shikaku, format: :json)
end
