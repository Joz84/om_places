class Inventory < ApplicationRecord
  belongs_to :event
  belongs_to :category

  delegate :name, to: :category

end
