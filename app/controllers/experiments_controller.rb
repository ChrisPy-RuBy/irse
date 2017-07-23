class ExperimentsController < ApplicationController

  def index
    experiments = Experiment.all
    render :json => experiments
  end

  def show 
    experiment = Experiment.find(paras[:id])
    render :json => experiment
  end

  def create
    experiment = Experiment.create(experiment_params)
    render :json => experiment, status: :created
  end

  private
  def experiment_params
    params.require(:experiment).permit([:title, :description, :image, :field, :experimentId])

  end

end