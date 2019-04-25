class CharactersController < OpenReadController
  before_action :set_character, only: [:destroy]

  # GET /characters
  def index
    @characters = Character.all

    render json: @characters
  end

  # GET /characters/1
  def show
    render json: Character.find(params[:id])
  end

  # POST /characters
  def create
    @character = current_user.characters.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    set_character

    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      puts "======================================================"
      puts current_user.characters
      @character = current_user.characters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_params
      params.require(:character).permit(:user_id, :user_name, :x, :y, :direction, :moving, :active, :spritesheet)
    end
end
