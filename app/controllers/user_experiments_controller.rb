class UserExperimentsController < ApplicationController

# def index
#   var = UserExperiment.where({ user: params[:user_id]})
#   render( json: var.as_json({include: :experiment}))
# end

def index 
  user = User.find(params[:user_id])
  var = user.user_experiments
  render :json => var.as_json(include: :experiment)
end


end 