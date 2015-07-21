class Api::BottleStoresController < ApplicationController
skip_before_filter :verify_authenticity_token

def index
  render json: BottleStore.all
end  
end