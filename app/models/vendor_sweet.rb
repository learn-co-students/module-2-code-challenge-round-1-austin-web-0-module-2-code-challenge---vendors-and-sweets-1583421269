class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor
    validates :price, presence: true, inclusion: { in: 1..99}
end
