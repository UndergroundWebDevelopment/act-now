RSpec.shared_context "base form" do
  let(:form) do 
    form = Form.new
    allow(form).to receive(:validate!)
    form
  end
end
