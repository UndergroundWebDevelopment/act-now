class CompleteAction
  def initialize(id, form, current_user)
    @id, @form, @current_user = id, form, current_user
  end

  def run!
    validate! and authorize!

    action = ActionRepo.find(@id)
    action.completed = true
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
