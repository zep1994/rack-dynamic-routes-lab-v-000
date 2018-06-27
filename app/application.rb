class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{@price}\n\n"
      end
    elsif req.path.match(/search/)
 
      search_term = req.params["q"]
 
      if @@items.include?(search_term)
        resp.write "#{search_term} is one of our items"
      else
        resp.write "Item not found\n\n"
        resp.status = 400
      end
 
    else
      resp.write "Path Not Found"
      resp.status = 404
    end
 
    resp.finish
  end
end