RSpec.describe CompleteActionInstance do
  subject { CompleteActionInstance.new(id, form, nil) }

  let(:action_instance) { ActionInstance.create() }
  let(:id) { action_instance.id }

  let(:form) do
    form = Form.new
    allow(form).to receive(:validate!)
    form
  end

  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end

  it "sets the action_instance's 'completed' field to the current timestamp UTC" do
    now = Time.now.utc
    Timecop.freeze(now) do
      subject.run!
      expect(action_instance.completed_at).to eq now
    end
  end

  it "saves the action_instance" do
    expect(action_instance).to receive(:save)
    subject.run!
  end
end
