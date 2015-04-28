json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :synopsis, :released, :rating
  json.url movie_url(movie, format: :json)
end
