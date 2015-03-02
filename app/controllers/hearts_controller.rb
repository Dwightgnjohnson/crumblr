class HeartsController < ApplicationController
  def create
    @heart = Heart.new(heart_params)

    if @heart.save
      redirect_to @heart.post, notice: 'Loved that post!'
    else
      redirect_to root_url, notice: "Had issue with heart love"
    end
  end

  private

  def heart_params
    params.require(:heart).permit(:post_id)
  end
end
