RSpec.describe PromptForChore do
  subject { PromptForChore.new(chore.id) }
  let(:chore) { Chore.create }

  it "sets the chore's 'prompt' flag to true" do
    subject.run!
    expect(chore.prompt).to be
  end
end
