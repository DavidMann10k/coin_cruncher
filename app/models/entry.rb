class Entry < ApplicationRecord
  belongs_to :trade, dependent: :destroy, inverse_of: :debit
  belongs_to :trade, dependent: :destroy, inverse_of: :credit

  validates :name, :quantity, :trade, presence: true
end
