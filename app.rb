require 'sinatra'
require_relative 'encryption.rb'

get '/' do 
    erb :landing
end 

post '/landing' do 
    username = params[:username]
    password = params[:password]
    redirect '/user_login?username=' + username + '&password=' + password 
end 

get '/user_login' do
    username = params[:username]
    password = params[:password]
    erb :user_login, locals: {username: username, password: password}
end 

post '/user_login' do 
    user_choice = params[:user_choice]
    if user_choice == "View Contacts"
        redirect '/view_contacts'
    else 
        redirect '/edit_contacts'
    end 
end 

get '/view_contacts' do 
    erb :view_contacts
end 

get '/edit_contacts' do 
    erb :edit_contacts
end 