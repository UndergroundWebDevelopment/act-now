class TestChore
  def initialize(chore_id)
    @chore_id = chore_id
  end

  def run!
    if ChoreRepo.find(@chore_id).trigger_prompt?
      PromptForChore.new(@chore_id).run!
    end
  end
end
