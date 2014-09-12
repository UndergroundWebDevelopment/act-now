RSpec.describe CreateAction do

  subject { CreateAction.new(form, nil) }
  let(:object_class) { Action }

  include_context "base form"

  include_examples "validates the form"

  include_examples "creates object from form" 
end
