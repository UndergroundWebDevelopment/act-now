class CompleteChore
  def initialize(chore_id, current_user)
    @chore_id, @current_user = chore_id, current_user
  end

  def run!
    chore = ChoreRepo.find(@chore_id)
    chore.prompt = false
    chore.save

    timeline_event_form = CreateTimelineEventForm.new(
      trigger_id: @chore_id,
      trigger_type: "Chore",
      type: :completed_action,
      action_id: chore.action_id,
    )

    CreateTimelineEvent.new(timeline_event_form, @current_user).run!
  end
end
