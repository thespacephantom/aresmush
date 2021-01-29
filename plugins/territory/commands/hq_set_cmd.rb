module AresMUSH
  module Territory
    class SetHqCmd
      include CommandHandler

      #Check that the enactor can set an HQ
      def check_can_set_hq
        #return t('dispatcher.not_allowed') if !Territory.can_set_hq?(enactor)
        return nil
      end

      #TODO: Check that this faction doesn't already have an HQ.

      def handle
        client.emit_ooc t('territory.hq_set')
        enactor_room.update(hq: enactor.Demographics.get_group(Faction))
      end
    end
  end
end
