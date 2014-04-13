class ListsController < ApplicationController
#  before_action :authenticate_user!
  inherit_resources

  def permitted_params
    params.permit(:list => [:name])
  end

end
