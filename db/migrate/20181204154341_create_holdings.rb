class CreateHoldings < ActiveRecord::Migration[5.2]
  def change
    create_table :holdings do |t|
        t.string :name
        t.string :token
        t.integer  :amount
        t.integer :costbasis
        t.string :wallet
        t.integer :portfolio_id
      t.timestamps
    end
  end
end
