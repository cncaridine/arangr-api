class ArangrController < ApplicationController
  # ===============
  # index route
  # ===============
  def index
    render json:  Arangr.all
  end
  # ===============
  # show route
  # ===============
  def show
    render json:  Arangr.find(params["id"])
  end
  # ===============
  # create route
  # ===============
  def create
      render json: Arangr.create(params["arangr"])
  end
  # ===============
  # delete route
  # ===============

  # ===============
  # update route
  # ===============
end
