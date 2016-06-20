class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.string :responsable
      t.string :mail
      t.string :tel
      t.string :tableau
      t.string :serie
      t.string :nom_joueur1
      t.string :prenom_joueur1
      t.string :licence_joueur1
      t.string :club_joueur1
      t.string :nom_joueur2
      t.string :prenom_joueur2
      t.string :licence_joueur2
      t.string :club_joueur2

      t.timestamps null: false
    end
  end
end
