class Application

  @@items = []

 def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)

   if req.path=="/items/"
     resp.write "The item price is #{"price"}."
     resp.status = 200
   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish
 end
end
