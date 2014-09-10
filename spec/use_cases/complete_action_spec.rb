RSpec.describe CompleteAction do
  subject { CompleteAction.new(id, form, nil) }

  let(:action) { Action.create() }
  let(:id) { action.id }

  let(:form) do
    form = Form.new
    allow(form).to receive(:validate!)
    form
  end

  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end

  it "sets the action's 'completed' field to true" do
    subject.run!
    expect(action.completed).to be
  end

  it "saves the action" do
    expect(action).to receive(:save)
    subject.run!
  end
end
