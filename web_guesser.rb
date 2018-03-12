require 'sinatra'
require 'sinatra/reloader'


x = rand(100);
get '/' do
	#render erb template called index. Create local variable for x that is equal to x from this file.
	erb :index, :locals => {:x => x}
end