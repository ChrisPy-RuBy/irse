class ExperimentsController < ApplicationController

  def index
    experiments = Experiment.all
    render :json => experiments
  end

  def show 
    experiment = Experiment.find(params[:id])
    render :json => experiment
  end

  def create
    experiment = Experiment.create(experiment_params)
    render :json => experiment, status: :created
  end

  def update
    experiment = Experiment.find(params[:id])
    if experiment.update_attributes(experiment_params)
      render :json => experiment
    else
      render :json => {status: :update_failed}
    end
  end

  def destroy 
    experiment = Experiment.find(params[:id])
    if experiment.destroy!
      render :json => {status: :experiment_removed}
    else 
      render :json => {status: :removal_failed}
    end
  end

  private
  def experiment_params
    params.require(:experiment).permit([:title, :description, :image, :field, :experimentId])

  end

end