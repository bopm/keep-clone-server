class Api::V1::CardsController < Api::V1::ApiController
  before_action :find_card, only: [:show, :destroy, :update]

  def index
    @resources = Card.all
    render json: @resources
  end

  def show
    render json: @card
  end

  def create
    @card = Card.new(card_params)
    @card.save ? render(json: @card) : render_error(@card)
  end

  def update
    @card.update_attributes(card_params)
    @card.save ? render(json: @card) : render_error(@card)
  end

  def destroy
    @card.destroy ? head(:ok) : render_error(@card)
  end

  private

  def find_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:text, :pinned)
  end
end
