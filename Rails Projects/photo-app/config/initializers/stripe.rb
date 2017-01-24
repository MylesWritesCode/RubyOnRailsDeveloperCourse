Rails.configuration.stripe = {
  secret_key: ENV['STRIPE_TEST_SECRET_KEY'],
  publishable_key: ENV['STRIPE_TEST_PUBLISHABLE_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
