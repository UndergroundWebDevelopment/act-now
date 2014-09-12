RSpec.describe CreateChore do

  subject { CreateChore.new(form, nil) }
  let(:object_class) { Chore }

  let(:action) { Action.create }

  let(:form) do 
    form = ChoreForm.new
    form.action_ids = [action.id]
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
end
