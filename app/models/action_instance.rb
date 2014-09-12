class ActionInstance
  include Chassis::Persistence

  attr_accessor :id
  attr_accessor :action_id

  attr_accessor :title
  attr_accessor :completed_at

  attr_accessor :deleted_at
end
