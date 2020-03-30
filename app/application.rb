class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/item/)
    items_name = req.path.split("/item/").last 
      item = @@items.find{|i| i.title == items_name}
      resp.write item.price
    else
     resp.write "Route not found"
     resp.status = 404
   end
  
  resp.finish
end
end