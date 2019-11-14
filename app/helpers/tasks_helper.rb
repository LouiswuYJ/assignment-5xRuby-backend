module TasksHelper
  def button_text
    if controller.action_name == "new"
       t('views.create_task')
    else 
       t('views.save_task')
    end
  end

  def task_enum
    Task.priorities.keys
  end

  def task_status(status)
    case status
      when "pending"
        t('views.status.pending')
      when "processing"
        t('views.status.processing')
      when "done"
        t('views.status.done')
    end
  end

  def task_priority(priority)
    case priority
      when "low"
        t('views.priority.low')
      when "middle"
        t('views.priority.middle')
      when "high"
        t('views.priority.high')
    end
  end
end

