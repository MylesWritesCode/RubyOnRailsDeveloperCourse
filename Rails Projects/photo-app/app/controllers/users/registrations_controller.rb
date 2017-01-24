class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      resource.save_with_subscription
    end
  end

  protected
  # Set path after sign up to index.
  def after_sign_up_path_for(resource)
    render 'welcome#index'
  end
end
