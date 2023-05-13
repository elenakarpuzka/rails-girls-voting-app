require 'sinatra'

votes = {}

get '/' do
    @title = 'Добре дошли в машината за гласуване!'
    erb :index
  end

get '/cast' do
    @title = 'Благодарим за вашия глас!'
    @vote  = params['vote']
  
    votes[@vote] = votes.fetch(@vote, 0) + 1
  
    erb :cast
  end
  
get '/results' do
    @title = 'Резултати'
    @votes = votes
    erb :results
  end
