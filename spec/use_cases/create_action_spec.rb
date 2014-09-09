require 'app/repositories/action_repo'
require 'app/entities/action'
require 'app/use_cases/create_action'
require 'app/form'

RSpec.describe CreateAction do

  let(:form) do 
    form = instance_double(Form) 
    allow(form).to receive(:valid?).and_return true
    form
  end

  subject { CreateAction.new(form, nil) }

  it "creates an Action object" do
    expect(Action).to receive :create
    subject.run!
  end

  it "returns an Action object" do
    action = subject.run!
    expect(action).to be_kind_of Action
  end

  context "with an invalid form" do

    before :each do
      allow(form).to receive(:valid?).and_return(false)
    end

    it "raises ValidationError" do
      expect { subject.run! }.to raise_error ValidationError
    end
  end
end
