module TasksHelper
  def button_text
    if controller.action_name == "edit"
       t('views.save_task')
    else 
       t('views.create_task')
    end
  end

  def priority_selection
    [[t("views.priority.low"), "low"], [t("views.priority.middle"), "middle"], [t("views.priority.high"), "high"]]
  end

  def task_status(status)
    t("views.status.#{status}")
  end

  def task_priority(priority)
    t("views.priority.#{priority}")
  end
end

