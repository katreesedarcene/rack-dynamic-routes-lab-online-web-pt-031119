class Application
 
  @@items = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
 
      song_title = req.path.split("/item/").last 
     if item = @@items.find{|i| i.item == item_name}
 
      resp.write item.price
      
        else 
        resp.status = 400
        resp.write "Item not found"
         else
      resp.status=404
      resp.write "Route not found"
    end

      
    end
 
    resp.finish
  end
end