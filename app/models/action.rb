class Action
  include Chassis::Persistence
  include Chassis::Initializable
  include Equalizer.new(:id)

  attr_accessor :id
  attr_accessor :title, :completed

  attr_accessor :deleted_at
end
