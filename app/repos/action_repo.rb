require 'chassis'

class ActionRepo
  extend Chassis::Repo::Delegation

  class << self 
    def find_pending(current_user)
      query PendingActions.new(current_user)
    end

    def find_completed(current_user)
      query CompletedActions.new(current_user)
    end

    def find_deleted(current_user)
      query DeletedActions.new(current_user)
    end
  end
end

PendingActions = Struct.new(:current_user)
CompletedActions = Struct.new(:current_user)
DeletedActions = Struct.new(:current_user)
