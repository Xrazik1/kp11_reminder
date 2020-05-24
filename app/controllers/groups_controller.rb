class GroupsController < ApplicationController
  expose :groups, ->{ Group.all }
  expose :group,  ->{ params[:id] ? Group.find(params[:id]) : Group.first }
  expose :week,   ->{ group.week }
  expose :days,   ->{ week.sorted_days }

  def index
    render :show

    # TODO Create hello page instead of rendering first group
  end

  def show
    render :show
  end
end

