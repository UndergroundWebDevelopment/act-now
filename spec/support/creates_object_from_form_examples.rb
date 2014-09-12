RSpec.shared_examples "creates object from form" do
  it "creates a model instance from the form" do
    expect(object_class).to receive(:create).with(form.attributes)
    subject.run!
  end

  it "returns a model instance" do
    action = subject.run!
    expect(action).to be_kind_of object_class
  end
end
