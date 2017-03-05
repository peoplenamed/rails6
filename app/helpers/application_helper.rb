module ApplicationHelper

  # For devise
  def resource_name
    :user
  end

  # For devise
  def resource
    @resource ||= User.new
  end

  # For devise
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
