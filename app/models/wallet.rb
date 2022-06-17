class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, presence: true,
            length: {maximum: Settings.digits.length_name_max_25}
  validates :balance, presence: true, numericality: {only_integer: true}
end