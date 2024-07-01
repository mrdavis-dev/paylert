class PagosController < ApplicationController
  before_action :set_pay, only: [:show, :update]
  
  def index
    @pagos = @current_user.pagos
    render json: Oj.dump(@pagos.as_json, mode: :compat), status: :ok
  end

  def show_by_client
    # pagos por cliente
    render json: Oj.dump(get_payments_by_clients.as_json, mode: :compat), status: :ok
  end

  def show
    render json: Oj.dump(@pago.as_json, mode: :compat), status: :ok
  end

  def create
    @pago ||= @current_user.pagos.new(pagos_create_params)

    if @pago.save
      render json: Oj.dump( @pago.as_json, mode: :compat ), status: :created  
    else
      render json: @pago.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pago.update(pagos_update_params)
      render json: Oj.dump( @pago.as_json, mode: :compat ), status: :created
    else
      render json: @pago.errors, status: :unprocessable_entity
    end
  end

  private

    def set_pay
      @pago = @current_user.pagos.find_by(id: params[:id])

      unless @pago
        render json: { error: 'Pago no encontrado'}, status: :not_found
      end
    end

    def pagos_create_params
      params.require(:pagos).permit(:idcliente, :pago, :metodopago, :descripcion, :status)
    end

    def pagos_update_params
      params.require(:pagos).permit(:status, :descripcion)
    end

    def get_payments_by_clients
      @payments = Pagos.where(user_id: @current_user, idcliente: params[:idcliente])
    end
end
