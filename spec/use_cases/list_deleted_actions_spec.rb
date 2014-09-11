RSpec.describe ListDeletedActions do

  subject { ListDeletedActions.new(nil) }

  it "retrieves deleted actions" do
    expect(ActionRepo).to receive(:find_deleted)
    subject.run!
  end
end
