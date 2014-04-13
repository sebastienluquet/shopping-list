class Account::ItemsController < ApplicationController
  include InheritedResources::DSL
  inherit_resources
  belongs_to :list
  protected
    def begin_of_association_chain
      current_user
    end
  create! do |success, failure|
    success.html { redirect_to products_path }
  end
  def permitted_params
    params.permit(:item => [:product_id])
  end
end
