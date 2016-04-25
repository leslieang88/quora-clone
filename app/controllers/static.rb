get '/' do
  erb :"static/index"
end

post '/signup' do
	user = User.new(params[:user])
	if user.save
		@new_user = User.new
	else

	end
end

... . . .. . . ... . . .. . .. . . .. .. .. . .. . . . .
 long_url = params[:long_url]
  # create a Object for every new url's input
  @new_url = Url.new(long_url: long_url)

  # assigned the result of new_url to short_url 
  @new_url.shorten

  @urls= Url.all.order(updated_at: :desc).limit(3)

  if @new_url.save 
    @new_url.to_json
    # @error_message = "Invalid URL input".to_json
  else
    status 400
    @error_message = "Invalid URL input".to_json
  end