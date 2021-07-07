class PagesController < ApplicationController

  # BELOW MEANS I CAN ONLY ACCESS HOME PAGE WITHOUT LOGING IN
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def about
  end
end
