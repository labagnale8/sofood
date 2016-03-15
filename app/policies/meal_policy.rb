class MealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    if user ? user.admin : false
    end
  end

  def update?
     if user ? user.admin : false
    end
  end
end
