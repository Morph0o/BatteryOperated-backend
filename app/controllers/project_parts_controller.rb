class ProjectPartsController < ApplicationController

    def index 
        projparts = ProjectPart.all 
        render json: projparts
    end
end
