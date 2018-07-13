class ImagesController < ApplicationController
    
    before_action :set_image, only: [:show, :edit, :update, :destroy]
    
    def index
        @image = Image.all
    end
    
    def new 
        @image = Image.new
    end
    
    def update
        @image.update images_params
        
        redirect_to @image
    end
    
    def edit

    end
    
    def create
        @image = Image.new images_params
        @image.save
        
        redirect_to images_path
    end
    
    def destroy 
        @image.destroy
        
        redirect_to images_path
    end
    
    def show

    end
    
    private 
    
    def images_params
       params.require(:image).permit :description, :picture

    end
    
    def set_image
        @image = Image.find params[:id]
    end 
    
end
