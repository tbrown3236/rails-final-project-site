json.array!(@blogs) do |blog|
  json.extract! blog, :id, :author, :title, :content, :published_date
  json.url blog_url(blog, format: :json)
end
