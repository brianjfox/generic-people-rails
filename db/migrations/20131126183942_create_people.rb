class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.string :minitial
      t.date :birthdate

      t.timestamps
    end

    create_table :nicknames_people do |t|
      t.references :nickname
      t.references :person
    end

    create_table :addresses_people do |t|
      t.references :address
      t.references :person
    end

    create_table :emails_people do |t|
      t.references :email
      t.references :person
    end

    create_table :people_phones do |t|
      t.references :person
      t.references :phone
    end

  end
end
