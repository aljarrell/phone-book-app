require 'sinatra'
require_relative 'encryption.rb'

get '/' do 
    erb :landing
end 

post '/landing' do 
    landing_choice = params[:landing_choice]
    if landing_choice == "Login"
        redirect '/user_login'
    else 
        redirect '/create'
    end
end 

get '/create' do 
    erb :create 
end 

post '/create' do 
    
    redirect '/user_login'
end 

get '/user_login' do
    erb :user_login
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