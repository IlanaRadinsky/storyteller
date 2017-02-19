class MediafilesController < ApplicationController

  def new
    @mediafile=Mediafile.new
  end

  def create
	@current_user=User.find(session[:user_id])
	@mediafile=Mediafile.new(mediafile_params)
	@mediafile.user_id= @current_user.id
	@mediafile.save
	redirect_to mediafile_path(@mediafile.id)
  end

  def show
	@current_user=User.find(session[:user_id])
	@mediafiles=@current_user.mediafiles
  end

  def index
  end

  def mediafile_params
	  params.require(:mediafile).permit(:title, :description, :attachment)
  end

end
