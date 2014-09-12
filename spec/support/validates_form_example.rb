RSpec.shared_examples "validates the form" do
  it "validates the form" do
    expect(form).to receive(:validate!)
    subject.run!
  end
end
