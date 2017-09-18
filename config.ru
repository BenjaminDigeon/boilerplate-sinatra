require 'sass/plugin/rack'
use Sass::Plugin::Rack

require './app.rb'
run Sinatra::Application
