class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string      :number, null: false
      t.integer     :expire_month, null: false
      t.integer     :expire_day, null: false
      t.integer     :security_code, null: false
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
