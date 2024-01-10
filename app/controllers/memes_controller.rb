class MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)

    if @meme.save
      redirect_to @meme
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :url)
  end
end
