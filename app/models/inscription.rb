TABLEAUX = ["simple homme", "simple dame", "double homme", "double dame", "double mixte"]
SERIES = ["R6", "D7", "D8", "D9", "P"]
PAIEMENT = ["En attente de paiement", "Payé"]

class Inscription < ActiveRecord::Base
  validates :responsable, presence: true
  validates :mail, presence: true
  validates :tel, presence: true
  validates :tableau, presence: true
  validates :serie, presence: true
  validates :nom_joueur1, presence: true
  validates :prenom_joueur1, presence: true
  validates :licence_joueur1, presence: true
  validates :club_joueur1, presence: true
end
