RSpec.describe CreateChore do

  subject { CreateChore.new(form, nil) }
  let(:object_class) { Chore }

  let(:action) { Action.create }

  let(:trigger_type) { Faker::Lorem.word }
  let(:trigger_params) { { a: Faker::Lorem.word, b: Faker::Lorem.sentence(3) } }

  let(:form) do 
    form = CreateChoreForm.new
    form.action_id = action.id
    form.trigger_type = trigger_type
    form.trigger_params = trigger_params
    allow(form).to receive(:validate!)
    form
  end

  include_examples "validates the form"

  it "returns a chore instance" do
    chore = subject.run!
    expect(chore).to be_kind_of object_class
  end

  it "sets the chore's title" do
    chore = subject.run!
    expect(chore.title).to eq form.title
  end

  it "associates the action with the chore" do
    chore = subject.run!
    expect(chore.action_id.to_s).to eq action.id.to_s
  end

  it "stores the trigger type" do
    chore = subject.run!
    expect(chore.trigger_type).to eq trigger_type
  end

  it "stores the trigger parameters" do
    chore = subject.run!
    expect(chore.trigger_params).to eq trigger_params
  end
end
