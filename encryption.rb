require 'bcrypt'

def encrypt_password(password)
    password = BCrypt::Password.create(password)
    return password
end 

def verify_password(encrypted_pw, password)
    return BCrypt::Password.new(encrypted_pw) == password 
end 