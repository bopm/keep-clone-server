class Api::V1::XsrfController < Api::V1::ApiController
  def show
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
    render json: {ok: true}
  end
end
