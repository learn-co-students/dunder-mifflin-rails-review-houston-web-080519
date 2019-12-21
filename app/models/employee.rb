class Employee < ApplicationRecord
    belongs_to :dog

    def name
        name = self.first_name + " " + self.last_name
    end
end
