class ApplicationController < ActionController::Base
  def ensure_correct_user
    @task = Task.find_by(id:params[:id])
    if @task.user_id != current_user.id
      flash[:notice] = "権限がありません"
      redirect_to tasks_path
    end
  end
end
