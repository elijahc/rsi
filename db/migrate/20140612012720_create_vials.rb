class CreateVials < ActiveRecord::Migration
  def change
    create_table :vials do |t|
      # Core References
      t.string  :study_id
      t.string  :subject_id
      t.string  :sample_id
      t.string  :sequence

      # Core Attributes
      t.string  :current_label
      t.string  :mat_type
      t.string  :parent_id

      t.timestamps
    end

    add_index :vials, :current_label, :unique
  end
end
