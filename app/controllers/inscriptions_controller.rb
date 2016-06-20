class InscriptionsController < ApplicationController

  def index
    @shr6 = Inscription.where(tableau: "simple homme", serie: "R6").order(:id)
    @sh_r6 = { name: "Simple Homme R6", array: @shr6}
    @shd7 = Inscription.where(tableau: "simple homme", serie: "D7").order(:id)
    @sh_d7 = { name: "Simple Homme D7", array: @shd7}
    @shd8 = Inscription.where(tableau: "simple homme", serie: "D8").order(:id)
    @sh_d8 = { name: "Simple Homme D8", array: @shd8}
    @shd9 = Inscription.where(tableau: "simple homme", serie: "D9").order(:id)
    @sh_d9 = { name: "Simple Homme D9", array: @shd9}
    @shp = Inscription.where(tableau: "simple homme", serie: "P").order(:id)
    @sh_p = { name: "Simple Homme P", array: @shp}
    @sh = [@sh_r6, @sh_d7, @sh_d8, @sh_d9, @sh_p]
    @sdr6 = Inscription.where(tableau: "simple dame", serie: "R6").order(:id)
    @sd_r6 = { name: "Simple Dame R6", array: @sdr6}
    @sdd7 = Inscription.where(tableau: "simple dame", serie: "D7").order(:id)
    @sd_d7 = { name: "Simple Dame D7", array: @sdd7}
    @sdd8 = Inscription.where(tableau: "simple dame", serie: "D8").order(:id)
    @sd_d8 = { name: "Simple Dame D8", array: @sdd8}
    @sdd9 = Inscription.where(tableau: "simple dame", serie: "D9").order(:id)
    @sd_d9 = { name: "Simple Dame D9", array: @sdd9}
    @sdp = Inscription.where(tableau: "simple dame", serie: "P").order(:id)
    @sd_p = { name: "Simple Dame P", array: @sdp}
    @sd = [@sd_r6, @sd_d7, @sd_d8, @sd_d9, @sd_p]
    @dhr6 = Inscription.where(tableau: "double homme", serie: "R6").order(:id)
    @dh_r6 = { name: "Double Homme R6", array: @dhr6}
    @dhd7 = Inscription.where(tableau: "double homme", serie: "D7").order(:id)
    @dh_d7 = { name: "Double Homme D7", array: @dhd7}
    @dhd8 = Inscription.where(tableau: "double homme", serie: "D8").order(:id)
    @dh_d8 = { name: "Double Homme D8", array: @dhd8}
    @dhd9 = Inscription.where(tableau: "double homme", serie: "D9").order(:id)
    @dh_d9 = { name: "Double Homme D9", array: @dhd9}
    @dhp = Inscription.where(tableau: "double homme", serie: "P").order(:id)
    @dh_p = { name: "Double Homme P", array: @dhp}
    @dh = [@dh_r6, @dh_d7, @dh_d8, @dh_d9, @dh_p]
    @ddr6 = Inscription.where(tableau: "double dame", serie: "R6").order(:id)
    @dd_r6 = { name: "Double Dame R6", array: @ddr6}
    @ddd7 = Inscription.where(tableau: "double dame", serie: "D7").order(:id)
    @dd_d7 = { name: "Double Dame D7", array: @ddd7}
    @ddd8 = Inscription.where(tableau: "double dame", serie: "D8").order(:id)
    @dd_d8 = { name: "Double Dame D8", array: @ddd8}
    @ddd9 = Inscription.where(tableau: "double dame", serie: "D9").order(:id)
    @dd_d9 = { name: "Double Dame D9", array: @ddd9}
    @ddp = Inscription.where(tableau: "double dame", serie: "P").order(:id)
    @dd_p = { name: "Double Dame P", array: @ddp}
    @dd = [@dd_r6, @dd_d7, @dd_d8, @dd_d9, @dd_p]
    @dmr6 = Inscription.where(tableau: "double mixte", serie: "R6").order(:id)
    @dm_r6 = { name: "Double Mixte R6", array: @dmr6}
    @dmd7 = Inscription.where(tableau: "double mixte", serie: "D7").order(:id)
    @dm_d7 = { name: "Double Mixte D7", array: @dmd7}
    @dmd8 = Inscription.where(tableau: "double mixte", serie: "D8").order(:id)
    @dm_d8 = { name: "Double Mixte D8", array: @dmd8}
    @dmd9 = Inscription.where(tableau: "double mixte", serie: "D9").order(:id)
    @dm_d9 = { name: "Double Mixte D9", array: @dmd9}
    @dmp = Inscription.where(tableau: "double mixte", serie: "P").order(:id)
    @dm_p = { name: "Double Mixte P", array: @dmp}
    @dm = [@dm_r6, @dm_d7, @dm_d8, @dm_d9, @dm_p]
    @inscriptions = Inscription.all.order(:tableau, :serie)
    respond_to do |format|
      format.html
      format.csv { send_data @inscriptions.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def new
    @inscription = Inscription.new
  end

  def create
    @inscription = Inscription.new(inscription_params)
    if @inscription.save
      redirect_to inscriptions_path
    else
      render new
    end
  end

  def edit
    @inscription = Inscription.find(params[:id])
  end

  def update
    @inscription = Inscription.find(params[:id])
    @inscription.update(inscription_params)
    redirect_to inscriptions_path
  end

  def update_paiement
    @inscriptions = Inscription.all
    @id = params[:id]
    id = params[:id]
    @inscription = Inscription.find(id)
    @inscription.paiement_joueur1 = "Payé"
    if @inscription.save
      respond_to do |format|
        format.html { redirect_to inscriptions_path(@inscriptions) }
        format.js
      end
    end
  end

  def downdate_paiement
    @inscriptions = Inscription.all
    @id = params[:id]
    id = params[:id]
    @inscription = Inscription.find(id)
    @inscription.paiement_joueur1 = "En attente de paiement"
    if @inscription.save
      respond_to do |format|
        format.html { redirect_to inscriptions_path(@inscriptions) }
        format.js
      end
    end
  end

  def update_paiement2
    @inscriptions = Inscription.all
    @id = params[:id]
    id = params[:id]
    @inscription = Inscription.find(id)
    @inscription.paiement_joueur2 = "Payé"
    if @inscription.save
      respond_to do |format|
        format.html { redirect_to inscriptions_path(@inscriptions) }
        format.js
      end
    end
  end

  def downdate_paiement2
    @inscriptions = Inscription.all
    @id = params[:id]
    id = params[:id]
    @inscription = Inscription.find(id)
    @inscription.paiement_joueur2 = "En attente de paiement"
    if @inscription.save
      respond_to do |format|
        format.html { redirect_to inscriptions_path(@inscriptions) }
        format.js
      end
    end
  end

  def destroy
    @inscription = Inscription.find(params[:id])
    @inscription.destroy
    redirect_to inscriptions_path
  end


  private

  def inscription_params
    params.require(:inscription).permit(:responsable, :mail, :tel, :tableau, :serie,
      :nom_joueur1, :prenom_joueur1, :licence_joueur1, :club_joueur1, :nom_joueur2,
      :prenom_joueur2, :licence_joueur2, :club_joueur2, :paiement_joueur1, :paiement_joueur2)
  end
end
