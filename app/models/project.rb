class Project < ApplicationRecord
    has_many :project_parts
    has_many :images
    has_many :parts, through: :project_parts
end
