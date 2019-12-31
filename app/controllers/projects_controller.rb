class ProjectsController < ApplicationController

    def index 
        projects = Project.all 
        render json: projects.to_json(serialized_data)
    end

    def create 
        created = Project.create(name: params[:name],desc: params[:desc], image: params[:image],user_id: params[:user_id])
        render json: created
    end
    def show
        project = Project.find(params[:id])
        render json: project.to_json(serialized_data)
    end
    def destroy
        project = Project.find(params[:id])
        Project.destroy(params[:id])
        render json: project
        end

    private

    def serialized_data
        {
            :include => {
                :parts => {:except => [:created_at, :updated_at]},
                :images => {:except => [:created_at,]}
            }
        }
    end
end
