class Account::ListsController < ListsController
  before_action :authenticate_user!
  protected
    def begin_of_association_chain
      current_user
    end
end
