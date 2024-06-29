require 'oj'

class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :update, :destroy]

    def index
        @clients = @current_user.clients
        render json: Oj.dump(@clients.as_json, mode: :compat), status: :ok
    end

    # GET /clients/1
    def show
        render json: Oj.dump(@client.as_json, mode: :compat), status: :ok
    end

    # GET /clients/1/edit
    def edit
    end

    # POST /clients
    def create
        @client ||= @current_user.clients.new(client_params)

        if @client.save
        render json: Oj.dump( @client.as_json, mode: :compat ), status: :created  
        else
        render json: @client.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /clients/1
    def update
        if @client.update(client_params)
            render json: Oj.dump( @client.as_json, mode: :compat ), status: :created
        else
        render json: @client.errors, status: :unprocessable_entity
        end
    end

    # DELETE /clients/1
    def destroy
        if @client.destroy
            render json: {messaje: "Cliente Eliminado"}, status: :ok
        else
            render json: @client.errors, status: :unprocessable_entity
        end
    end

    private

        def set_client
            @client = @current_user.clients.find_by(id: params[:id])

            unless @client
              render json: { error: 'Cliente no encontrado' }, status: :not_found
            end
        end

        def client_params
            params.require(:client).permit(:nombre, :apellido, :email, :whatsapp)
        end
end
