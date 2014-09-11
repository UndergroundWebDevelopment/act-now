class ListCompletedActions
  def initialize(current_user)
    @current_user = current_user
  end

  def run!
    ActionRepo.find_completed(@current_user)
  end
end
