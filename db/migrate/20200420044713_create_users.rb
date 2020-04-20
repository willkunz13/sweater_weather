class CreateUsers < ActiveRecord::Migration[5.2]
	require 'securerandom'
  def change
    create_table :users do |t|
			t.string :email, index: true
			t.string :password_digest
			t.string :api_key, default: SecureRandom.urlsafe_base64
    end
  end
end
