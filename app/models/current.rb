class Current < ActiveSupport::CurrentAttributes
  attribute :user
end

# This is a class that you can use to assign things like user, timezone, account. 
# Those types of attributes/details that pertain to the current request.