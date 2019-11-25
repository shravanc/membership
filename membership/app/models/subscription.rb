class Subscription < ApplicationRecord
has_many :plans



def index
  { subscription: Subscription.all.as_json(only: subscription_attributes) }
end

def create params
  subscription = Subscription.new(params[:layout].as_json)
  subscription.save

  message = { message: 'layout created succesfully'}
  return [ true, message ]

end

private
  def subscription_attributes
    [:id, :title]
  end
end
