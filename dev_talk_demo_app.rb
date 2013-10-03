class DevTalkDemoApp < Sinatra::Base
  set :show_exceptions, true
  enable :logging

  get '/' do
    slim :index, layout: false
  end
end
