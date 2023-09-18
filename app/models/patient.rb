class Patient < ApplicationRecord
    has_one :health_plan
end
