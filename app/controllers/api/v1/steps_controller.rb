class Api::V1::StepsController < ApplicationController

  def update

    id = params[:id]
    name = params[:name]
    count = params[:count]

    @result = 'success'
    @ranking = 2014

  end
end


