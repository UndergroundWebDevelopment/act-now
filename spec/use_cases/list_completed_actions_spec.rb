RSpec.describe ListCompletedActions do

  subject { ListCompletedActions.new(nil) }

  it "retrieves completed actions" do
    expect(ActionRepo).to receive(:find_completed)
    subject.run!
  end
end
