class DataLoadingsController < ApplicationController
  before_action :set_data_loading, only: [:show, :edit, :update, :destroy]

  # GET /data_loadings
  def index
    @data_loadings = DataLoading.all
  end

  def create
    @data_loading = DataLoading.new(data_loading_params)
    
    if @data_loading.save
      redirect_to @data_loading, notice: 'DataLoading fue creado exitosamente.'
    else
      render :new
    end
  end


  # GET /data_loadings/1
  def show
    # @data_loading ya está configurado por el before_action
  end

  # GET /data_loadings/new
  def new
    @data_loading = DataLoading.new
  end

  # GET /data_loadings/1/edit
  def edit
    # @data_loading ya está configurado por el before_action
  end

  # POST /data_loadings
  def create
    @data_loading = DataLoading.new(data_loading_params)

    if @data_loading.save
      redirect_to @data_loading, notice: 'Data loading was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /data_loadings/1
  def update
    if @data_loading.update(data_loading_params)
      redirect_to @data_loading, notice: 'Data loading was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /data_loadings/1
  def destroy
    @data_loading.destroy
    redirect_to data_loadings_url, notice: 'Data loading was successfully destroyed.'
  end

  private

  # Usa callbacks para compartir configuración común o restricciones entre acciones.
  def set_data_loading
    @data_loading = DataLoading.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Data loading not found."
    redirect_to data_loadings_path
  end

  # Solo permite una lista de parámetros de confianza a través de.
  def data_loading_params
    params.require(:data_loading).permit(:ahf, :nombre, :otros_campos)
  end
end
