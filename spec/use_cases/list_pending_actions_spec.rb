RSpec.describe ListPendingActions do

  subject { ListPendingActions.new(nil) }

  context "when no pending actions" do
    before do
      Action.create(title: Faker::Lorem.sentence(3), completed: true)
    end

    it "returns value is empty" do
      expect(subject.run!).to be_empty
    end
  end

  context "when there are pending actions" do
    let!(:pending_action) { Action.create(title: Faker::Lorem.sentence(3), completed: false) }

    it "returns them" do
      returned = subject.run!

      expect(returned).to include(pending_action)
    end
  end
end
