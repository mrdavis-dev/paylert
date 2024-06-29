class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :destroy]

  def index
    @contratos = @current_user.contratos
    if @contratos.any?
      render json: Oj.dump(@contratos.as_json, mode: :compat), status: :ok
    else
      render json: { error: 'No hay contratos disponibles'}, status: :not_found
    end
  end

  def show
    render json: Oj.dump(@contrato.as_json, mode: :compat), status: :ok
  end

  def contracts_by_client
    render json: Oj.dump(contracts_by_client_response.as_json, mode: :compat), status: :ok
  end

  def create
    @contrato ||= @current_user.contratos.new(contrato_params)

    if @contrato.save
      render json: Oj.dump( @contrato.as_json, mode: :compat ), status: :created  
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @contrato.destroy
      render json: {messaje: "Contrato Eliminado"}, status: :ok
    else
        render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  private
    
    def set_contrato
      @contrato = @current_user.contratos.find_by(id: params[:id])

      unless @contrato
        render json: { error: 'Contrato no encontrado'}, status: :not_found
      end
    end

    def contrato_params
      params.require(:contrato).permit(:item_id, :dayrecord, :idclient)
    end

    def contracts_by_client_response
      @contratos_by_user = Contrato.where(user_id: @current_user, idclient: params[:idclient])
    end
end
