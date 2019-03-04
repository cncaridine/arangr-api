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

  # ===============
  # delete route
  # ===============

  # ===============
  # update route
  # ===============
end
