class AddPaiementToInscriptions < ActiveRecord::Migration
  def change
    add_column :inscriptions, :paiement_joueur1, :string
    add_column :inscriptions, :paiement_joueur2, :string
  end
end
