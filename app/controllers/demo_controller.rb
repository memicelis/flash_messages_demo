class DemoController < ApplicationController
  def index
  end

  def create_notice
    respond_to do |format|
      format.turbo_stream {
        flash.now[:notice] = "This is a success message!"
        render turbo_stream: turbo_stream.replace("flash",
          partial: "shared/flash")
      }
    end
  end

  def create_alert
    respond_to do |format|
      format.turbo_stream {
        flash.now[:alert] = "This is a warning message!"
        render turbo_stream: turbo_stream.replace("flash",
          partial: "shared/flash")
      }
    end
  end
end
