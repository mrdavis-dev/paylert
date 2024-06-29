class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = @current_user.items
    render json: Oj.dump(@items.as_json, mode: :compat), status: :ok
  end

  def show
    render json: Oj.dump(@item.as_json, mode: :compat), status: :ok
  end

  def create
    @item ||= @current_user.items.new(items_params)

    if @item.save
      render json: Oj.dump( @item.as_json, mode: :compat ), status: :created  
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    if @item.update(items_params)
      render json: Oj.dump( @item.as_json, mode: :compat ), status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @item.destroy
      render json: {messaje: "Item Eliminado"}, status: :ok
    else
        render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

    def set_item
      @item = @current_user.items.find_by(id: params[:id])

      unless @item
        render json: { error: 'Item no encontrado'}, status: :not_found
      end
    end

    def items_params
      params.require(:items).permit(:name, :description, :price)
    end

end
