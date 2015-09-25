module ApplicationHelper
  def resource_name
    :admin
  end

  def resource
    @resource ||= admin.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:admin]
  end
end
