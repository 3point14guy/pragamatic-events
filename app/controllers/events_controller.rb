class EventsController < ApplicationController

  def index
    @events = %w(BugSmash Hackathon Kata-camp)
  end
end
