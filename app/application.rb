class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/item/)
    items = req.path.split("/item/").last 
      song = @@songs.find{|s| s.title == song_title}
    else
     resp.write "Route not found"
     resp.status = 404
   end
  
  resp.finish
end
end