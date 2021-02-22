module AresMUSH
  module Territory
    class SetHqCmd
      include CommandHandler

      attr_accessor :territory

      def parse_args
       self.territory = trim_arg(cmd.args)
      end

      #Check that the enactor can set an HQ
      def check_can_set_hq
        #return t('dispatcher.not_allowed') if !Territory.can_set_hq?(enactor)
        return nil
      end

      #TODO: Check that this faction doesn't already have an HQ.
      return "No HQ for Neutrals!" if enactor_room.faction == nil
      return "#{enactor_room.territory} already has an HQ." if !enactor_room.hq ==nil


      def handle
        client.emit_ooc t('territory.hq_set')
        enactor_room.update(hq: yes)
      end
    end
  end
end
