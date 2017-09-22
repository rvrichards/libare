class StaticPagesController < ApplicationController
  def about
  end

  def home
    @libations = Libation.order("RANDOM()").limit(4)
  end

  def help
  end
end
