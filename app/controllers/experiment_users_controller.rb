class ExperimentUsersController < ApplicationController

  def index 
    exp = Experiment.find(params[:id])
    var = exp.user_experiments
    render :json => var.as_json(include: :user)
  end

end
