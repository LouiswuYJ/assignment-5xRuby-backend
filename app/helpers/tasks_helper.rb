module TasksHelper
  def button_text
    if controller.action_name == "new"
       "新增任務"
    else 
       "儲存修改"
    end
  end

  def task_enum
    Task.priorities.keys
  end
end

