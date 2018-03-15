class RegistrationsController < Devise::RegistrationsController

protected
def after_update_path_for(resource)
  musician_path(resource)
end
end
