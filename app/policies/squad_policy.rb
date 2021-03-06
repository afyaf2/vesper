class SquadPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    # add policy, if his logged in or not
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def add_sidekick?
    record.user == user

  end

  def update_package?
    record.user == user
  end

  def confirm_squad_order?
    record.user == user
  end

end
