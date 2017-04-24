class ApplicationController

  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new
    if request.path == '/'
      response.write '<h1>Hello World</h1><p>Some more info about our site...</p>'
    elsif request.path == '/books'
      response.write 'Books Page'
    else
      response.status = '404'
      response.write 'Not found'
    end
    response.finish
  end
end
