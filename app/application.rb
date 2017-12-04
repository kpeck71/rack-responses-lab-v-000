class Application

  def call(env)
    resp = Rack::Response.new

    time = 22
    #time = Time.new.hour
    resp.write "It is #{Time.new}\n"

    if time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
