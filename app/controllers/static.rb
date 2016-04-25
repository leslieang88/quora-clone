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


