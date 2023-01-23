class Api::V1::ItunesController < ApplicationController
  def index

    #Modelを作成次第、マジックナンバーを定数に置き換える
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
