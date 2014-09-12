RSpec.describe DeleteAction do

  let(:action) { Action.create() }
  let(:id) { action.id }

  subject { DeleteAction.new(id, nil) }

  it "sets the action's deleted_at to the current timestamp UTC" do
    now = Time.now.utc
    Timecop.freeze(now) do 
      subject.run!
      expect(action.deleted_at).to eq now
    end
  end

  it "saves the action" do
    expect(action).to receive(:save)
    subject.run!
  end
end
