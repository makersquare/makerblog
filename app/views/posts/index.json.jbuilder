json.array!(@posts) do |post|
  json.extract! post, :id, :name, :title, :content
  json.url post_url(post)
end
