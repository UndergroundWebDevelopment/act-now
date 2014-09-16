class PromptForChore
  def initialize(chore_id)
    @chore_id = chore_id
  end

  def run!
    chore = ChoreRepo.find(@chore_id)
    chore.prompt = true
    chore.save
  end
end
