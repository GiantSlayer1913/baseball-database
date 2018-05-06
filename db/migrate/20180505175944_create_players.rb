# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.string :bat, null: false
      t.string :throw, null: false

      t.timestamps
    end
  end
end
