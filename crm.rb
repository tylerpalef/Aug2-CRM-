require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end

get 'contacts' do
  @first_name = ['Poop', 'Ligma', 'Bofa', 'Ripp']
  @last_name = ['Eater', 'Balls', 'Deez-nuts', 'Chord']
  @email = ['apple@apple.com', 'bob@bob.bob', '123@456.net', 'place@holder.org']
  @notes = ['red', 'blue', 'green', 'yellow']
  erb :contacts
end

get 'about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
