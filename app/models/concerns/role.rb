module Role
  extend ActiveSupport::Concern
  def role
    model_name.to_s.underscore
  end
end
