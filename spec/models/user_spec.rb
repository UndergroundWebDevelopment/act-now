RSpec.describe User do
  let(:pass) { Faker::Lorem.word }

  it "converts a set password a digest and stores it in password_digest" do
    subject.password = pass
    expect(subject.password_digest.size).to eq 60
  end

  it "returns true when comparing the password field to a plain text password" do
    subject.password = pass
    expect(subject.password).to eq pass
  end
end
