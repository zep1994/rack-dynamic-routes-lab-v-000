class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
        if req.path=="/items/#{Item}"
      resp.write "#{@price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end
end