class BottleStoresController < ApplicationController
   before_action :set_BottleStore, only: [:show, :edit, :update, :destroy]
    def index
      @bottle_stores = BottleStore.all
    end

    def show
    end

    def new
      @bottle_store = BottleStore.new
    end

    def edit
    end

    def create
      @bottle_store = BottleStore.new(booz_params)
      respond_to do |format|
        if @bottle_store.save
          format.html { redirect_to @bottle_store, notice: 'BottleStore was successfully created.' }
          format.json { render :show, status: :created, location: @Bottle_store }
        else
          format.html { render :new }
          format.json { render json: @Bottle_store.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @bottle_store.update(booz_params)
          format.html { redirect_to bottle_store_path, notice: 'BottleStore was successfully updated.' }
          format.json { render :show, status: :ok, location: @bottle_store }
        else
          format.html { render :edit }
          format.json { render json: @bottle_store.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @Bottle_store.destroy
      respond_to do |format|
        format.html { redirect_to bottle_store_path, notice: 'BottleStore was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_BottleStore
        @bottle_store = BottleStore.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def booz_params
        params.require(:bottle_store).permit(:name, :open_time, :closed_time, :latitude, :longitude, :sat_open_times, :sat_closed_times, :sun_open_times, :sun_closed_times)
      end
end
