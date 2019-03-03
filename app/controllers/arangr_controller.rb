class ArangrController < ApplicationController
  # ===============
  # index route
  # ===============
  def index
    render json:  [
      { title: 'SXSW', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBnCKq0A47VX0n617wfSe7-i2wOJ3K5X0y3RO1svJ1y_mTRj4Yg', date: '2019-03-08', time: 0900, location: 'Austin TX', description: 'music festival of the year', rsvp: true },
      { title: 'SXSW', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBnCKq0A47VX0n617wfSe7-i2wOJ3K5X0y3RO1svJ1y_mTRj4Yg', date: '2019-03-08', time: 0900, location: 'Austin TX', description: 'music festival of the year', rsvp: true }
    ]
  end
  # ===============
  # show route
  # ===============

  # ===============
  # create route
  # ===============

  # ===============
  # index route
  # ===============

  # ===============
  # delete route
  # ===============

  # ===============
  # update route
  # ===============
end
