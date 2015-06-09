module Lita
  module Handlers
    class NopeBadger < Handler

      route(/^nope badger/i, :badger, command: false, help: { "nope badger" => "Posts the nope badger gif."} )

      def badger(request)
        request.reply("http://www.reactiongifs.com/r/oh-shi.gif")
      end


    end

    Lita.register_handler(NopeBadger)

  end
end
