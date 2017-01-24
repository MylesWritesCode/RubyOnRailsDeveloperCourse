class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :stripeToken

  def save_with_subscription
    if valid?
      customer = Stripe::Customer.create(email: email, plan: "PA-0160", source: stripeToken)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end
