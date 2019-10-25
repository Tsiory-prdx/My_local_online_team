class CreateAllAboutMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :all_about_messages do |t|
      t.timestamps
    end
  end
end
