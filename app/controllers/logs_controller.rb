class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def by_user
    @logs = Log.by_user(params[:user_id])

    render json: @logs, status: 200
  end
end
