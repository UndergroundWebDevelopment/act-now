RSpec.describe CreateAction do

  subject { CreateAction.new(form, nil) }

  let(:form) do 
    form = Form.new
    allow(form).to receive(:validate!)
    form
  end

  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end

  it "creates an Action object from the form" do
    expect(Action).to receive(:create).with(form.attributes)
    subject.run!
  end

  it "returns an Action object" do
    action = subject.run!
    expect(action).to be_kind_of Action
  end
end
