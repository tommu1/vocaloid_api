class Api::V1::TestController < ApplicationController
  def index
    kanna = { id:1, nickname: "カンナ", age: 24 }
    render json: kanna
  end
end
