class ImagesController < ApplicationController

    def index
        images = Images.all
        render json: images
    end
end
