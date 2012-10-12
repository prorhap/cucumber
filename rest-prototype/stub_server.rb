require 'sinatra'
require 'json'


	# get '/twitter/1/rhapsody/hi' 
	post '/twitter/:id/:name/:content' do

		puts "id = #{params[:id]}"
		puts "name = #{params[:name]}"
		puts "content = #{params[:content]}"

		"true"
	end


	get '/test' do
	  "Hello World"
	  		puts "@@@@@@@@@@@@@@ test"

	end

