class ProjectsController < ApplicationController

    def index 
        projects = Project.all 
        render json: projects
    end

    def create 
        created = Project.create(name: params[:name],desc: params[:desc], image: params[:image],user_id: params[:user_id])
        render json: created
    end
end
