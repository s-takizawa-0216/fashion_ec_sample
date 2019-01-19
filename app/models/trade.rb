class Trade < ApplicationRecord

  belongs_to :user
  belongs_to :stock  , :foreign_key => 'stock_id' , optional: true

end
