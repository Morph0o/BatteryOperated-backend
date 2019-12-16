class Part < ApplicationRecord
    has_many :projectparts
    has_many :projects, through: :projectparts
end
