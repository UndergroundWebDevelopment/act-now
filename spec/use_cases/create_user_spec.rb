RSpec.describe CreateUser do

  subject { CreateUser.new(form, nil) }
  let(:object_class) { User }

  include_context "base form"

  include_examples "validates the form"

  include_examples "creates object from form" 
end
