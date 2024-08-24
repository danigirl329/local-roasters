class CoffeeTag < ApplicationRecord
  belongs_to :coffee
  belongs_to :tag
end
