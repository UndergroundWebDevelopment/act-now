class MemoryRepo < Chassis::MemoryRepo
  def query_pending_actions(klass, q)
    all(klass).select do |action|
      action.completed == false
    end
  end

  def query_completed_actions(klass, q)
    all(klass).select do |action|
      action.completed == true
    end
  end

  def query_deleted_actions(klass, q)
    all(klass).reject do |action|
      action.deleted_at.nil?
    end
  end
end
