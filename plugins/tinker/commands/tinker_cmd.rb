module AresMUSH
  module Tinker
    class TinkerCmd
      include CommandHandler
      
      def handle
    Character.all.each do |c|
        Demographics.set_group(c, "Rank", "None")
    end
    client.emit_success "Done!"
  end

    end
  end
end
