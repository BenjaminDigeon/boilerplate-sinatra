require 'logger'
require 'yaml'

# Load env variables from the config.yml if exist
file = File.expand_path( File.join File.dirname(__FILE__), "./config.yml" )
if File.exist? file
  YAML.load_file(file).each do |k,v|
    ENV[k.upcase] = v
  end
end
