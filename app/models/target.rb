class Target < ApplicationRecord
  validates :name, :amount, :due_at, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
