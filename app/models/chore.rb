class Chore
  include Chassis::Persistence

  attr_accessor :id
  attr_accessor :title

  attr_accessor :actions

  attr_accessor :deleted_at
end
