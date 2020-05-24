class NoticesController < ApplicationController
  expose :day
  expose :week
  expose :group
  expose :notice,   build: ->(notice_params){ day.notices.new(notice_params) }

  def create_inline
    if notice.save
      flash[:success] = 'Ваше объявление добавлено'
      redirect_to group_path group
    else
      render 'groups/show'
    end
  end

  private

  def notice_params
    params.permit(:content)
  end

  # TODO params without require is not good
end
