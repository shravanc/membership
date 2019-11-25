class Plan < ApplicationRecord
belongs_to :plan

def index
  { plan: Plan.all.as_json(only: plan_attributes) }
end

def create params
  plan = Plan.new(params[:layout].as_json)
  plan.save

  message = { message: 'layout created succesfully'}
  return [ true, message ]

end

private

def plan_attributes
  [:id, :title]
end


end
