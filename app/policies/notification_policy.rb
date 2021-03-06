class NotificationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.case.lawyer == user.lawyer
  end
end
