class User
  include Chassis::Persistence
  include BCrypt

  attr_accessor :id
  attr_accessor :given_name, :surname

  attr_accessor :password_digest

  attr_accessor :deleted_at

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def full_name
    "#{given_name} #{surname}"
  end
end
