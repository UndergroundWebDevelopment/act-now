RSpec.describe TestChore do

  subject { TestChore.new(chore.id) }
  let(:chore) { Chore.create }

  it "tests whether the chore should be prompted" do
    expect(chore).to receive(:trigger_prompt?)
    subject.run!
  end

  context "when chore should prompt" do
    it "prompts for the chore to be completed" do
      allow(chore).to receive(:trigger_prompt?).and_return(true)
      expect_any_instance_of(PromptForChore).to receive(:run!)
      subject.run!
    end
  end
end
