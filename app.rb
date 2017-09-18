require 'sinatra'
require 'slim'
require 'yaml'

require "sinatra/reloader" if development?
require "better_errors" if development?

Slim::Engine.set_options :disable_escape => true

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

# Load env variables from the config.yml if exist
file = File.expand_path( File.join File.dirname(__FILE__), "./config.yml" )
if File.exist? file
  YAML.load_file(file).each do |k,v|
    ENV[k.upcase] = v
  end
end

get '/' do
  #slim :"home/index"
end
