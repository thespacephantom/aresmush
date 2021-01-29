$:.unshift File.dirname(__FILE__)

module AresMUSH
     module Territory

    def self.plugin_dir
      File.dirname(__FILE__)
    end

    def self.shortcuts
      Global.read_config("territory", "shortcuts")
    end

    def self.get_cmd_handler(client, cmd, enactor)
      case cmd.root
      when "territory"
        case cmd.switch
        when nil
          return TerritoryCmd
        when "set"
          return SetTerritoryCmd
        when "hq"
          return SetHqCmd
        end
      end
      return nil
    end

    def self.get_event_handler(event_name)
      nil
    end

    def self.get_web_request_handler(request)
      nil
    end

  end
end
