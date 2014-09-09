require 'active_model'

ValidationError = Class.new RuntimeError

class Form
  include Chassis.form
  include ActiveModel::Validations

  def validate!
    raise ValidationError, errors unless valid?
  end
end
