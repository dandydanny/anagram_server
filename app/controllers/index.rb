require_relative '../models/word'
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word] # Needed for view
  @ana = Word.anagrams(params[:word]) # needed for view
  erb :index
end

post '/' do
  redirect "/#{params['word']}"
end
