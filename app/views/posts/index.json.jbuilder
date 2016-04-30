json.array!(@posts) do |post|
  json.extract! post, :id, :title, :motivation_level, :how_long, :body
  json.url post_url(post, format: :json)
end
