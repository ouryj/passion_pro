class ResidencesController < ApplicationController
    def index 
        @posts = Residence.all 
        @users = User.all
    end
    def global
        @users = User.all
    end

    def new 
       
        @res = Residence.new 
    end
    def create
    @user = current_user.id
     @res = Residence.new(
         image: params[:residence][:image],
         vimeo_file: params[:residence][:vimeo_file],
         title: params[:residence][:title],
         post: params[:residence][:post],
         user_id: @user
     )
         if @res.save
            redirect_to residences_path 
         else
            render 'new'
         end

    end
    def show 
       @res = Residence.find(params[:id]) 
    end

    def edit
        @res = Residence.find(params[:id])    
    end

    def update
        @user = current_user.id
 
        res = Residence.find(params[:id]) 
        res.update(
            image: params[:residence][:image],
            vimeo_file: params[:residence][:vimeo_file],
            title: params[:residence][:title],
            post: params[:residence][:post],
            user_id: @user
        )
        
        
          redirect_to residences_path    
    end
 

    private
    def residence_params
        params.require(:residence).permit(:image, :vimeo_file, :user_id, :title, :post)
    end
end
