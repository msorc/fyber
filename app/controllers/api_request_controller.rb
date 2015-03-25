class ApiRequestController < ApplicationController
  def new
    @api_request = ApiRequest.new
  end

  def create
    @api_request = ApiRequest.new(api_request_params)

    respond_to do |format|
      if @api_request.valid?
        begin
          @offers = FyberApiWrapper.get_offers(api_request_params)
        rescue Exception => e
          @error_message = e.message
          format.html { render :error }
        else
          format.html
        end
      else
        format.html { render :new }
      end
    end
  end

  private
    def api_request_params
      params.require(:api_request).permit(:uid, :pub0, :page)
    end  
end
