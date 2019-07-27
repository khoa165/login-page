require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  # BetterErrors.application_root = File.expand_path(__dir__)
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

require_relative "config/application"

set :views, (proc { File.join(root, "app/views") })
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

get '/new' do
  erb :new
end

get '/login' do
  erb :login
end

post '/user_signup' do
  User.create(username: params["username"], email: params["email"], password: params["password"])
  redirect "/"
end

get '/todo-app' do
end
