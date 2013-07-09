json.array!(@posts) do |post|
  json.extract! post, :title, :body, :excerpt, :tags, :categories
  json.url post_url(post, format: :json)
end
