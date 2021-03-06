# frozen_string_literal: true

class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
