class CreateAction
  def initialize(form, current_user)
    @form, @current_user = form, current_user
  end

  def run!
    validate!

    Action.create
  end

  private

  def validate!
    raise ValidationError unless @form.valid?
  end
end
