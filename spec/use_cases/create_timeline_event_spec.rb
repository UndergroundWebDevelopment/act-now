RSpec.describe CreateTimelineEvent do
  subject { CreateTimelineEvent.new(form, nil) }
  let(:object_class) { TimelineEvent }

  include_context "base form"

  include_examples "validates the form"

  include_examples "creates object from form" 
end
