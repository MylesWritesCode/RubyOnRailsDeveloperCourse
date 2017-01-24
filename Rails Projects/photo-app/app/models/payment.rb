class Payment < ApplicationRecord
  attr_accessor :card_number, :card_css, :card_month, :card_year
  belongs_to :user

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{ i+1}- #{name}"] }
  end

  def self.year_options
    (Date.today.year..(Date.today.year+10)).to_a
  end

  def process_payment
    customer = Stripe::Customer.create email: email, card: token
    Stripe::Charge.create customer: customer.id,
                          amount: 1000,
                          description: "Professional Plan", 
                          currency: "usd"
  end
end
