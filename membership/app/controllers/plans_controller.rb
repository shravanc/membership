class PlansController < ApplicationController

def index
  render json: Plan.new.index
end

def create
  layout = Plan.new
  status, data = layout.create(params)
  if status
    render json: data, status: :unprocessable_entity
  else
    render json: data, status: :created
  end
end


end
