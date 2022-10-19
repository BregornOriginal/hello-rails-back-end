class Api::MessagesController < ApplicationController
  def index
    @greetings = Message.all.sample
    render json: @greetings

    response.set_header('Access-Control-Allow-Origin', '*')
  end
end
