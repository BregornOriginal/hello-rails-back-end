class Api::MessagesController < ApplicationController
  def index
    @greetings = Message.all.sample
    render json: @greetings

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @greetings }
      format.json { render json: @greetings }
    end

  end
end
