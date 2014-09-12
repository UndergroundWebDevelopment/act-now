class UpdateAction
  def initialize(id, form, current_user)
    @id, @form, @current_user = id, form, current_user
  end

  def run!
    validate! and authorize!

    action = ActionRepo.find(@id)
    action.title = @form.title
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
