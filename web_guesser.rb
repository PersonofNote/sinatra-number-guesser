require 'sinatra'
require 'sinatra/reloader'

x = rand(100);
SECRET_NUMBER = x;

def check_guess(guess)
	if guess > SECRET_NUMBER+20
		return "Way too high!"
	elsif guess > SECRET_NUMBER
		return "Too high."
	elsif guess < SECRET_NUMBER-20
		return "Way too low!"
	elsif guess < SECRET_NUMBER
		return "Too low"
	else return "You got it! The secret number is #{SECRET_NUMBER}"
	end
end

def display_guess(guess)
	return "#{guess}"
end


get '/' do
	guess = params["guess"].to_i
	show = display_guess(guess)
	message = check_guess(guess)
	#render erb template called index. Create local variable for x that is equal to x from this file.
	erb :index, :locals => {:x => x, :message => message, :show => show }
end
