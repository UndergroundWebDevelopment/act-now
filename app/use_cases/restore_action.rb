class RestoreAction
  def initialize(id, current_user)
    @id, @current_user = id, current_user
  end

  def run!
    authorize!

    action = ActionRepo.find(@id)
    action.deleted_at = nil
    action.save
  end

  private

  def authorize!
    # TODO: Implement authorization logic.
    true
  end
end
