class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
     if req.path.match(/items/)
       song_title = req.path.split("/items/").last
       if item_price = @@items.find { |i| i.name == item_name}
         resp.write item_price.price
       else
         resp.write "Item not found"
         resp.status = 400
      end
    
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end