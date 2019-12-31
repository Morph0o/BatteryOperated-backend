class ImagesController < ApplicationController

    def index
        images = Image.all
        render json: images
    end 

    def create 
        image = Image.create(source: params[:source], project_id: params[:project_id])
        render json: image
    end
end
