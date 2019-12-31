class Part < ApplicationRecord
    has_many :project_parts
    has_many :projects, through: :project_parts
end
