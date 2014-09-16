class Chore
  include Chassis::Persistence

  attr_accessor :id
  attr_accessor :title

  attr_accessor :action_id

  attr_accessor :trigger_type
  attr_accessor :trigger_params

  attr_accessor :prompt

  attr_accessor :deleted_at

  def trigger_prompt?
    true
  end
end
