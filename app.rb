require 'sinatra'
require 'haml'


get '/' do
  @volume = `osascript lib/get_volume.scpt`
	haml :index
end

post '/volume/increase' do `osascript lib/increase_volume.scpt` end
post '/volume/decrease' do `osascript lib/decrease_volume.scpt` end
post '/volume/mute'     do `osascript lib/mute_volume.scpt`     end
post '/computer/sleep'  do `osascript lib/sleep.scpt`           end
