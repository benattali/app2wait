class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
