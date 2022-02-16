class Current < ActiveSupport::CurrentAttributes
  attribute :user
end

# Create Current class so you can use it to set the Current user in the application_controller