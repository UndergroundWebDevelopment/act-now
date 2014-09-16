class CreateTimelineEvent
  def initialize(form, current_user)
    @form, @current_user = form, current_user
  end

  def run!
    validate! && authorize!

    TimelineEvent.create(@form.attributes)
  end

  private

  def validate!
    @form.validate!
  end

  def authorize!
    # TODO: Implement authorization logic.
    true 
  end
end
