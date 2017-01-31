class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)

    if @request.valid?
      RequestMailer.request_appt(@request).deliver_now
      redirect_to new_request_url, notice: "Request received. Thank you."
    else
      render :new
    end
  end





  private

    def request_params
      params.require(:request).permit(:first_name, :last_name, :email, :phone, :comments)
    end

end
