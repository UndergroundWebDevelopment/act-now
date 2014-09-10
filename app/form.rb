require 'active_model'

ValidationError = Tnt.boom RuntimeError

class Form
  include Chassis.form
  include ActiveModel::Validations

  def validate!
    raise ValidationError, errors unless valid?
  end
end
