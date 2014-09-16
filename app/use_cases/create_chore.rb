class CreateChore
  def initialize(form, current_user)
    @form, @current_user = form, current_user
  end

  def run!
    validate! && authorize!


    Chore.create do |chore|
      chore.title = @form.title
      chore.action_id = @form.action_id
      chore.trigger_type = @form.trigger_type
      chore.trigger_params = @form.trigger_params
    end
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
