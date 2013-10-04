class DevTalkDemoApp < Sinatra::Base
  RouteDoesNotExist = Class.new(StandardError)
  configure do
    set :show_exceptions, false
    set :dump_errors, false
    set :raise_errors, true

    enable :logging
  end

  get '/' do
    slim :index, layout: false
  end

end
