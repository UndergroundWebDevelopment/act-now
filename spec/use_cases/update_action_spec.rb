RSpec.describe UpdateAction do
  subject { UpdateAction.new(id, form, nil) }

  let(:action) { Action.create() }
  let(:id) { action.id }

  let(:form) do
    form = UpdateActionForm.new
    allow(form).to receive(:validate!)
    form
  end

  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end

  it "sets the action's fields from the form" do
    expected= {}
    form.attributes.each_key do |key| 
      val = Faker::Lorem.sentence(2)
      form.send(:key=, val)
      expected[key] = val
    end

    subject.run!

    expected.each do |key, val|
      expect(action.send(key)).to eq val
    end
  end

  it "saves the action" do
    expect(action).to receive(:save)
    subject.run!
  end
end
