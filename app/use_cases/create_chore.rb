class CreateChore
  def initialize(form, current_user)
    @form, @current_user = form, current_user
  end

  def run!
    validate! && authorize!


    Chore.create do |chore|
      chore.title = @form.title
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
