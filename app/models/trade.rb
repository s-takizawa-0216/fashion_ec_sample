class Trade < ApplicationRecord

  belongs_to :user
<<<<<<< HEAD
  belongs_to :stock  , :foreign_key => 'stock_id' , optional: true
=======
  belongs_to :stock
>>>>>>> master

end
