class DayController < ApplicationController
  def on
    @day = Date.new(*params.values_at(:year, :month, :day).map(&:to_i))
  end
end
