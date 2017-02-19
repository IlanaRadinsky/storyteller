class MediafilesController < ApplicationController

  def new
    @mediafile=Mediafile.new
  end

  def create
	@current_user=User.find(session[:user_id])
	@mediafile=Mediafile.create(mediafile_params)
	@mediafile.user_id= @current_user.id
	redirect_to mediafiles_path
  end

  def show
	@mediafiles=Mediafile.find(session[:user_id])
  end

  def index
  end

  def mediafile_params
	  params.require(:mediafile).permit(:title, :description)
  end

end
