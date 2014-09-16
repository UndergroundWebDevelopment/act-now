class CreateChoreForm < Form
  attribute :title, String
  attribute :action_id, String

  attribute :trigger_type, String
  attribute :trigger_params, Hash
end
