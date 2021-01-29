module AresMUSH
  module Territory
    class SetTerritoryCmd
      include CommandHandler

      attr_accessor :territory

      def parse_args
       self.territory = trim_arg(cmd.args)
      end

      def handle
        enactor_room.update(territory: self.territory)
        client.emit_success "Territory for this room set!"
      end
    end
  end
end
