class MealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_admin?
  end

  def update?
    user_admin?
  end

  private

  def user_admin?
    user && user.admin
  end

end
