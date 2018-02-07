class CreateAssembliesAndParts < ActiveRecord::Migration[5.1]
  def change
    create_table :assemblies do |t|
      t.string :name
      t.timestamps
    end

    create_table :parts do |t|
      t.string :part_number
      t.timestamps
    end

    create_table :assemblies_and_parts, id: false do |t|
      t.string :assembly, index: true
      t.string :part, index: true
    end
  end
end
