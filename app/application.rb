class Application
 
  @@items = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
 
      song_title = req.path.split("/item/").last 
      item = @@items.find{|i| i.item == item_name}
 
      resp.write song.artist
    end
 
    resp.finish
  end
end