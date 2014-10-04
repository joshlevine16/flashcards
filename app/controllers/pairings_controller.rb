class PairingsController < ApplicationController
  def forgot(pairing)
  	@pairing = pairing
  	format.html {redirect_to @pairing}
  	format.js {}
  end

  def hard
  end

  def good
  end

  def easy
  end
end
