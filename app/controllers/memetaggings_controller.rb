class MemetaggingsController < ApplicationController
  before_action :set_meme

  def index
    raise
    @memetaggings = @meme.memetaggings
  end

  def new
    raise
    @memetagging = @meme.memetaggings.build
  end

  def create
    tag = Tag.find_or_create_by(name: params["memetagging"]["tag_name"].downcase)
    memetagging = Memetagging.find_or_create_by(meme_id: params["meme_id"], tag_id: tag.id)

    #render turbo_stream: turbo_stream.replace("listed_tags", partial: "memetaggings/index")
  end

  private

  def memetagging_params
    params.permit!
  end

  def set_meme
    @meme = Meme.find(params[:meme_id])
  end
end
