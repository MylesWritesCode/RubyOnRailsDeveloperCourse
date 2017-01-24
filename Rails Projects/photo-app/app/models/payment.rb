class Payment < ApplicationRecord
  attr_accessor :stripeToken
  belongs_to :user

  def self.month_options
    (1..12)
  end

  def self.year_options
    (Date.today.year..(Date.today.year+10)).to_a
  end

  def process_payment
    customer = Stripe::Customer.create(email: email, source: stripeToken)
    Stripe::Charge.create customer: customer.id,
                          amount: 1000,
                          description: "Professional Plan",
                          source: stripeToken,
                          currency: "usd"
  end
end
