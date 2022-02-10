
get '/' do      
 @finstagram_posts = FinstagramPost.order(created_at: :desc) 
erb:index
  
end
get '/signup' do     # if a user navigates to the path "/signup",
    @user = User.new   # setup empty @user object
    erb(:signup)       # render "app/views/signup.erb"
  end

  post '/signup' do
    params.to_s
  end

  
post '/signup' do
    
    email      = params[:email]
    avatar_url = params[:avatar_url]
    username   = params[:username]
    password   = params[:password]

    if email.present? && avatar_url.present? && username.present? && password.present?
    user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })
    user.save
    escape_html user.inspect
else

    "Validation failed."
  end
end