class Application
    def call(env)
        resp = Rack::Response.new

        num = Kernel.rand(0..24)
        # resp.write "#{num}\n"

        if num < 12 
            resp.write "Good Morning!"
        elsif num >= 12
            resp.write "Good Afternoon!"
        end
        resp.finish
    end

end