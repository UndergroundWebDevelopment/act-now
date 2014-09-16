class CreateTimelineEventForm < Form
  attribute :type, Symbol
  attribute :action_id, String

  attribute :trigger_id, String
  attribute :trigger_type, String
end
