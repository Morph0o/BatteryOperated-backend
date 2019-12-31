class ProjectPartsController < ApplicationController

    def index 
        projparts = ProjectPart.all 
        render json: projparts
    end
    def create
        projpart= ProjectPart.create(part_id: params[:part_id],project_id: params[:project_id])
        render json: projpart
    end
    def destroy
        projectpart = ProjectPart.find(params[:id])
        ProjectPart.destroy(params[:id])
        render json: projectpart
        end
end
