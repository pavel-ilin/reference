class Office < ApplicationRecord
  belongs_to :building
  belongs_to :company
end
