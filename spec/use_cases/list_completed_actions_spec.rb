RSpec.describe ListCompletedActions do

  subject { ListCompletedActions.new(nil) }

  context "when no completed actions" do
    before do
      Action.create(title: Faker::Lorem.sentence(3), completed: false)
    end

    it "returns value is empty" do
      expect(subject.run!).to be_empty
    end
  end

  context "when there are completed actions" do
    let!(:completed) { Action.create(title: Faker::Lorem.sentence(3), completed: true) }

    it "returns them" do
      returned = subject.run!

      expect(returned).to include(completed)
    end
  end
end
