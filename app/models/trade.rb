class Trade < ApplicationRecord
  belongs_to :user
  has_one :credit, -> { where(credit: true)  }, class_name: 'Entry', inverse_of: :trade
  has_one :debit,  -> { where(credit: false) }, class_name: 'Entry', inverse_of: :trade
  has_many :entries

  accepts_nested_attributes_for :credit, :debit

  validates :credit, :debit, presence: true
end
