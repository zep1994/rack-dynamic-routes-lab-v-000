class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
     if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
      
    
      if req.path.match(/items/)
        @@item.each do |item|
          resp.write "#{@price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
    else
      resp.write "Route not found"
      resp.status = 404
      
 
    resp.finish
  end
end