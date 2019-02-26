class ResidencesController < ApplicationController
    def index 
        @posts = Residence.all 
    end

    def new 
        @res = Residence.new 
    end

    def create
        Residence.create(residence_params)
        redirect_to residences_path
    end

    private
    def residence_params
        params.require(:residence).permit(:video)
    end
end
