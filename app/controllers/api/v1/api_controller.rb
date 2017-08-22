class Api::V1::ApiController < ApplicationController
  respond_to :json


  private

  def set_pagination
    return unless @resources.present? && @resources.respond_to?(:total_count)

    response.headers['X-total']  = @resources.total_count.to_s
    response.headers['X-offset'] = @resources.offset_value.to_s
    response.headers['X-limit']  = @resources.limit_value.to_s
  end

  def render_error(entity = nil)
    if entity.nil?
      render json: {}, status: :unprocessable_entity
    else
      render json: entity.errors.messages, status: :unprocessable_entity
    end
  end
end
