class Api::V1::ItunesController < ApplicationController
  def index
    musics = ITunesSearchAPI.search(
      term: "DECO27",
      country: 'jp',
      media: 'music',
      lang: 'ja_jp',
      limit: '20'
    )

    render json: musics
  end
end
