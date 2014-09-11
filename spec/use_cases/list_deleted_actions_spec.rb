RSpec.describe ListDeletedActions do

  subject { ListDeletedActions.new(nil) }

  context "when no deleted actions" do
    before do
      Action.create(title: Faker::Lorem.sentence(3))
    end

    it "returns value is empty" do
      expect(subject.run!).to be_empty
    end
  end

  context "when there are deleted actions" do
    let!(:deleted) { Action.create(title: Faker::Lorem.sentence(3), deleted_at: Time.now) }

    it "returns them" do
      returned = subject.run!

      expect(returned).to include(deleted)
    end
  end
end
