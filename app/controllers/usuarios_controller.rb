class UsuariosController < ApplicationController

#index / show / edit / update / new / create / destroy

    def index
        @usuarios = Usuario.all
        @usuario = Usuario.new
    end

    def show
        @usuario = Usuario.find(params[:id])
    end

    def edit
        @usuario = Usuario.find(params[:id])
    end
    
    def update
        @usuario = Usuario.find(params[:id])
        @usuario.update(usuario_params)
        redirect_to usuarios_url
    end
    
    def destroy
        @usuario = Usuario.find(params[:id])
        @usuario.destroy
        redirect_to usuarios_url
    end

    def create
        @usuario = Usuario.new(usuario_params)
        @usuario.save
        redirect_to @usuario
    end

    private 
    def usuario_params
        params.require(:usuario).permit(:nome, :datanascimento, :cpf, :genero_id, 
        contatos_attributes: [:id, :numero, :tipo, :_destroy])
    end
      
end
