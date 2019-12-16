class Project < ApplicationRecord
    has_many :projectparts
    has_many :images
    has_many :parts, through: :projectparts
end
