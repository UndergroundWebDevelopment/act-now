class ListDeletedActions
  def initialize(current_user)
    @current_user = current_user
  end

  def run!
    ActionRepo.find_deleted(@current_user)
  end
end
