class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
     if req.path.match(/items/)
       song_title = req.path.split("/items/").last
       if item_name = @@items.find { |i| i.name == item_name}
         resp.write item.price
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