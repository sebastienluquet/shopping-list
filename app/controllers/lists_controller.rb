class ListsController < ApplicationController
  inherit_resources
  belongs_to :user, :optional => true

  def permitted_params
    params.permit(:list => [:name])
  end

end
