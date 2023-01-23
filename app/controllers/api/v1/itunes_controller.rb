class Api::V1::ItunesController < ApplicationController
  def index
    artist = params[:artist] ? params[:artist] : "DECO27"
    limit = params[:limit] ? params[:limit] : 20
    musics = ITunesSearchAPI.search(
      term: artist,
      country: 'jp',
      media: 'music',
      lang: 'ja_jp',
      limit: limit
    )

    render json: musics
  end
end
