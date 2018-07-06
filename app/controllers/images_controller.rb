class ImagesController < ApplicationController
    
    def new 
        @image = Image.new
    end
    
    def update
        
    end
    
    def create
        @image = Image.new images_params
        @image.save
        
        redirect_to @image
    end
    
    def show
       @image = Image.find params[:id] 
    end
    
    private 
    
    def images_params
       params.require(:image).permit(:description) 
    end
    
end
