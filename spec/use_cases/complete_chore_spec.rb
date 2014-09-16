RSpec.describe CompleteChore do
  subject { CompleteChore.new(chore.id, nil) }

  let(:chore) { Chore.create(action_id: rand(5)) }

  it "sets the chore's prompt flag to false" do
    chore.prompt = true
    chore.save

    subject.run!
    expect(chore.prompt).to_not be
  end

  it "creates a 'completed_chore' timeline event" do
    expect(CreateTimelineEvent).to receive(:new) do |*args|
      form, _ = args
      expect(form.trigger_id.to_s).to eq chore.id.to_s
      expect(form.trigger_type.to_s).to eq "Chore"
      expect(form.type).to eq :completed_action
      expect(form.action_id.to_s).to eq chore.action_id.to_s
      ret = instance_double(CreateTimelineEvent)
      expect(ret).to receive(:run!)
      ret
    end
    subject.run!
  end
end
