class CompleteActionInstance
  def initialize(id, form, current_user)
    @id, @form, @current_user = id, form, current_user
  end

  def run!
    validate! and authorize!

    action = ActionInstanceRepo.find(@id)
    action.completed_at = Time.now.utc
    action.save
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
