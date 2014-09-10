RSpec.describe RestoreAction do

  let(:action) { Action.create(deleted_at: Time.now) }
  let(:id) { action.id }

  subject { RestoreAction.new(id, nil) }

  it "sets the action's deleted_at to nil" do
    subject.run!
    expect(action.deleted_at).to eq nil
  end

  it "saves the action" do
    expect(action).to receive(:save)
    subject.run!
  end
end
