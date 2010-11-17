class ProjectsController < ApplicationController
  # Define eerst module includes
  include Canable::Permissions

  # Daarna filters, op alfabet
  before_filter :check_permissions
  before_filter :require_current_user

  # Waar nodig, cache actions
  caches_action :index

  # Hou de volgende volgorde aan, dit maakt het makkelijker om dingen op te
  # zoeken
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

# Protected en private actions worden niet extra geindent
protected

  def protected_method
  end

private

  def private_method
  end

end

