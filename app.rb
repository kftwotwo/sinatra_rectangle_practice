require('sinatra')
require('./lib/rectangle')


get('/') do
  erb(:index)
end

get('/square') do
  length = params.fetch('length')
  width = params.fetch('width')
  @rectangle = Rectangle.new(length, width)
  erb(:result)
end
