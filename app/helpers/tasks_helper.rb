module TasksHelper
  def button_text
    if controller.action_name == "edit"
       t('views.save_task')
    else 
       t('views.create_task')
    end
  end

  def priority_selection
    [["低", 'low'], ["中", "middle"], ["高", "high"]]
  end

  def task_status(status)
    t("views.status.#{status}")
  end

  def task_priority(priority)
    t("views.priority.#{priority}")
  end
end

