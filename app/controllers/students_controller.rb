class StudentsController < ApplicationController
	before_action :authenticate_student!
  def index
  end

  def manage_cards
  end

  def progress
  end
end
