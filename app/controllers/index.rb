require_relative '../models/word'
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word]
  @ana = Word.anagrams(params[:word])
  erb :index
end

post '/' do
  redirect "/#{params['word']}"
end
