#run this get '/' do then run index.erb then post '/aunty' do... when it is called ot redirect to ("/?aunty =..."), it will redirect to get'/' do because it is recognised as /?.. the cycle then repeats

get '/' do #show something
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  # puts params[:lala]
  erb :index
end

get '/dog' do
   "inside dog"

end

post '/aunty' do #create something
  speech = params[:user_input]
  puts speech #WILL SHOW ON TERMINAL
  puts params[:user_input] #WILL SHOW ON TERMINAL
  if speech == speech.upcase
    speech = "Hello sexy!"
  else
    speech = "Speak up, Kiddo!"
  end
  redirect to("/?aunty=#{speech}")
end

# get '/google' do #create something (from user point of view, user getting something)
#   # speech = params[:user_input]
#   redirect to("http://google.com")
# end



# get '/hello/:google' do |n|
#   "Hello #{n}!"
# end

# get '/download/*.*' do
#   params['splat']
# end
