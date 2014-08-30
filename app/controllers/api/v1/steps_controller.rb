class Api::V1::StepsController < ApplicationController

  def update

    device_id = params[:id]
    name = params[:name]
    count = params[:count].to_i

    # StepCount の保存
    sc = StepCount.find_by(device_id:device_id)
    unless sc
      sc = StepCount.new
      sc.device_id=device_id
    end
    sc.name=name
    sc.count=count
    result = sc.save

    # ランキングを求める
    @ranking = StepCount.where("count > ?" , count).count + 1

    @result = result ? 'success':'fail'
  end
end


