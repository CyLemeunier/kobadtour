class PagesController < ApplicationController
  def home
    @inscription = Inscription.new
  end

  def informations

  end
end
