class Starbot
  module Transport
    class Irc
      
      def initialize(bot, defroom, opts = {})
        @bot       = bot
        @defroom   = defroom
        
        opts       = {:leave_one_on_one => false}.merge(opts)
        opts[:log] = Logger.new(STDERR) unless opts[:log].is_a?(Logger)
        @logger    = opts[:log]
      end # initialize(opts = {})

     end # class::Irc
  end # module::Transport
end # class::Starbot
