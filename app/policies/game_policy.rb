class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    true
  end


  def update?
    ## record --> instance of restaurant
    ## user --> current_user
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end
end
