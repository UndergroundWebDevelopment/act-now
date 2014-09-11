class ListPendingActions
  def initialize(current_user)
    @current_user = current_user
  end

  def run!
    ActionRepo.find_pending(@current_user)
  end
end
