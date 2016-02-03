
require 'rubygems'
require 'sinatra'
require 'json'
require 'securerandom'
require 'active_record'
require './config/environments' #database configuration
require './models/resource'

set :public_folder, 'assets'

get '/hello' do
    "Hello, World!"
end

get '/' do
  # @resources = Resource.all
	erb :index
end

get '/resources' do
	@resources = Resource.all(:order => "id desc")
	erb :resources
end

get '/get_status' do
  puts "==================================="
  puts params.inspect
  resource = Resource.where(:request_id=>params[:request_id])
  unless resource.blank?
    {:status => resource.first.status}.to_json
  else
     {:status => "Service Request not available"}.to_json
  end
end

# Handle POST-request (Receive and save the uploaded file)

post '/upload' do
  puts "==================================="
  puts params.inspect
  
  directory = File.join(File.dirname(__FILE__) ,"/uploads")
  
  filename = params[:file][:filename]
  file = params[:file][:tempfile]
  resource = Resource.new()
  resource.name = filename
  resource.request_id = SecureRandom.hex(6).to_s
  resource.path = "#{directory}/#{filename}"
  resource.status = "Request Initiated"
  

  File.open("#{directory}/#{filename}", 'wb') do |f|
    f.write(file.read)
  end
  resource.save
  if resource.save
  	 {:status => resource.status, :request_id=>resource.request_id}.to_json
  else
  	"Sorry, there was an error!"
  end
end

# get '/download_service_request/:filename' do |filename|
  # directory = File.join(File.dirname(__FILE__) ,"/uploads")
  # send_file "#{directory}/#{filename}", :filename => filename, :type => 'Application/octet-stream'
# end

get '/download_service_request' do 
  puts "==================================="
  puts params.inspect
  resource = Resource.where(:request_id=>params[:req_id])
  
  unless resource.blank?
    send_file "#{resource.first.path}", :filename => resource.first.name, :type => 'Application/octet-stream'
  else
     {:status => "Service Request not available"}.to_json
  end
  
  
end