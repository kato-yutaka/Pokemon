class RaischecktagsController < ApplicationController
  before_action :set_raischecktag, only: [:show, :edit, :update, :destroy]

  # GET /raischecktags
  # GET /raischecktags.json
  def index
    @raischecktags = Raischecktag.all
  end

  # GET /raischecktags/1
  # GET /raischecktags/1.json
  def show
  end

  # GET /raischecktags/new
  def new
    @raischecktag = Raischecktag.new
  end

  # GET /raischecktags/1/edit
  def edit
  end

  # POST /raischecktags
  # POST /raischecktags.json
  def create
    @raischecktag = Raischecktag.new(raischecktag_params)

    respond_to do |format|
      if @raischecktag.save
        format.html { redirect_to @raischecktag, notice: 'Raischecktag was successfully created.' }
        format.json { render :show, status: :created, location: @raischecktag }
      else
        format.html { render :new }
        format.json { render json: @raischecktag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raischecktags/1
  # PATCH/PUT /raischecktags/1.json
  def update
    respond_to do |format|
      if @raischecktag.update(raischecktag_params)
        format.html { redirect_to @raischecktag, notice: 'Raischecktag was successfully updated.' }
        format.json { render :show, status: :ok, location: @raischecktag }
      else
        format.html { render :edit }
        format.json { render json: @raischecktag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raischecktags/1
  # DELETE /raischecktags/1.json
  def destroy
    @raischecktag.destroy
    respond_to do |format|
      format.html { redirect_to raischecktags_url, notice: 'Raischecktag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raischecktag
      @raischecktag = Raischecktag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raischecktag_params
      params.require(:raischecktag).permit(:pokerai_id, :raistag_id)
    end
end
