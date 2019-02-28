class CommentsController < ApplicationController 
    
    def create
        @res = Residence.find(params[:residence_id])
        @comment = @res.comments.create(params.require(:residence).permit(:name,:content,:user_id))
        redirect_to residence_path(@res)
    end
    def destroy 
        @post = Residence.find(params[:residence_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to residence_path(@post)
    end

end
