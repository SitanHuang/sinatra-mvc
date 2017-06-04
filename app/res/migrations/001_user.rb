Sequel.migration do
  up do
    create_table :users, engine: 'MyISAM' do
      primary_key :id
      String :username, unique: true, null: false
      String :password, null: false
      Bignum :create, null: false
      Fixnum :credit, null: false, default: 0
    end
    puts 'Create table users'
    require_relative '../../models/user.rb'
    User.create(username: 'root', password: 'SHuang', create: Time.now.to_i, credit: 99999)
    puts 'Insert root user'
    puts User.first
  end

  down do
    drop_table :users
  end
end
