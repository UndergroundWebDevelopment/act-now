class Action
  include Chassis::Persistence

  attr_accessor :id
  attr_accessor :title

  attr_accessor :deleted_at
end
