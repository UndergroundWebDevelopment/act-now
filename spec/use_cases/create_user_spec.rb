RSpec.describe CreateUser do
  subject { CreateUser.new(form, nil) }

  let(:form) do 
    form = CreateUserForm.new
    allow(form).to receive(:validate!)
    form
  end

  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end

  it "creates a User object from the form" do
    expect(User).to receive(:create).with(form.attributes)
    subject.run!
  end

  it "returns a User object" do
    user = subject.run!
    expect(user).to be_kind_of User
  end
end
