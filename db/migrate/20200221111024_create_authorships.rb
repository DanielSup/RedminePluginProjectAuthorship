# frozen_string_literal: true

class CreateAuthorships < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :user_id, :integer
  end
end