class Api::V1::ItunesController < ApplicationController
  def index
    artist = params[:artist] ? params[:artist] : "DECO27"
    musics = ITunesSearchAPI.search(
      term: artist,
      country: 'jp',
      media: 'music',
      lang: 'ja_jp',
      limit: '20'
    )

    render json: musics
  end
end
