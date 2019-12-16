class PartsController < ApplicationController

    def index 
        parts = Part.all 
        render json: parts
    end

    def create 
        created = Part.create(name: params[:name],desc: params[:desc],image: params[:image])
        render json: created
    end
end
