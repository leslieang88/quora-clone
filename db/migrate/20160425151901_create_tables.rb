class CreateTables < ActiveRecord::Migration
	def change
		create_table :users do |u|
			u.string :name
			u.string :email
			u.string :encrypted_password
			u.datetime :created_at
			u.datetime :updated_at
		end

		create_table :questions do |q|
			q.string :user_id
			q.string :question_title
			q.text :question_content
			q.datetime :created_at
			q.datetime :updated_at
		end

		create_table :answers do |a| 
			a.integer :question_id
			a.integer :users_id
			a.text :answer_content
			a.datetime :created_at
			a.datetime :updated_at
		end
	end
end

