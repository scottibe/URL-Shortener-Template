require 'rubygems'
require 'bundler/setup'
require 'data_mapper'
require 'json'
require 'ostruct'
require 'rake'

require 'sinatra' unless defined?(Sinatra)

configure do

  SiteConfig = OpenStruct.new(
          :title => 'ShortCopy',
          :author => 'FatAxl',
          :url_base => 'https://scottbewickblog.wordpress.com/' # the url of your application
        )
        
  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| File.basename(lib, '.*') }
  
  DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/shorturls.db")

end


#   $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
#   Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }
  
#   DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/shorturls.db")

# end