RSpec.describe ListPendingActions do

  subject { ListPendingActions.new(nil) }

  it "retrieves pending actions" do
    expect(ActionRepo).to receive(:find_pending)
    subject.run!
  end
end
