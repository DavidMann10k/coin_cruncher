class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable #, :lockable, :timeoutable, :omniauthable

  has_many :trades
  has_many :entries, through: :trades

  def entry_totals
    entries.group(:name).sum(:quantity)
  end
end
