class ProjectPart < ApplicationRecord
    belongs_to :project
    belongs_to :part
end
