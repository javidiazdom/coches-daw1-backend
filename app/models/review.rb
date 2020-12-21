class Review < ApplicationRecord
    has_many :sections
    has_many :specifications
end
