class TimelineEvent
  include Chassis::Persistence

  attr_accessor :id
  attr_accessor :action_id
  attr_accessor :type

  attr_accessor :trigger_id
  attr_accessor :trigger_type

  attr_accessor :created_at
end
