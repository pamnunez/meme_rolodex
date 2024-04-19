class MemesController < ApplicationController
  def index
    @memes = Meme.all
    @current_user = current_user.id
  end

  def show
    @meme = Meme.find(params[:id])
  end
  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params.merge(user_id: current_user.id))
    if @meme.save
      redirect_to @meme
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def meme_params
    #current_user.id
    params.require(:meme).permit(:title, :url, :user)
  end
end
