RSpec.describe Form do
  describe "#validate!" do
    context "if not valid" do
      subject do 
        form = Form.new
        allow(form).to receive(:valid?).and_return(false)
        form
      end

      it "raises ValidationError" do
        expect{ subject.validate! }.to raise_error ValidationError
      end
    end
  end
end
