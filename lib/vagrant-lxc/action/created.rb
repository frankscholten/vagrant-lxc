module Vagrant
  module LXC
    module Action
      class Created < BaseAction
        def call(env)
          # Set the result to be true if the machine is created.
          env[:result] = env[:machine].state.created?

          # Call the next if we have one (but we shouldn't, since this
          # middleware is built to run with the Call-type middlewares)
          @app.call(env)
        end
      end
    end
  end
end
