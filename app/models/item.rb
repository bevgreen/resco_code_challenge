class Item < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :number, presence: true,
                     numericality: { only_integer: true, greater_than: 0 }
    STATUSES = ["Available", "Decommissioned", "Expired"]
  validates :status, presence: true, inclusion: { in: STATUSES }
end
