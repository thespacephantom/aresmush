module AresMUSH
  module Territory
    class SetTerritoryCmd
      include CommandHandler

      attr_accessor :territory_faction

      def parse_args
       self.territory = trim_arg(cmd.args)
      end

      def handle
        enactor_room.update(territory_faction: self.territory_faction)
        client.emit_success "Territory for this room set!"
      end
    end
  end
end
