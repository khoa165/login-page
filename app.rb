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
  user = User.create(username: params["username"], email: params["email"], password: params["password"])
  redirect "/todo_app/#{user.username}"
end

get '/todo_app/:username' do
  @user = User.find_by(username: params["username"])
  if @user.nil?
    # erb :error
  else
    @tasks = Task.where("user_id = ?", @user.id)
    erb :list
  end
end

post '/todo_app/:username/add_todo_task' do
  user = User.find_by(username: params["username"])
  task = Task.create(task_name: params["todo_task"])
  # binding.pry
  task.user = user
  task.save
  # binding.pry
  redirect "/todo_app/#{user.username}"
end
