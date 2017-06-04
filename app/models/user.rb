class User < Sequel::Model(:users)
  # primary_key :id
  # String :username, unique: true, null: false
  # String :password, null: false
  # Bignum :create, null: false
  # Fixnum :credit, null: false, default: 0
end
