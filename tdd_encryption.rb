require_relative 'encryption.rb'
require 'minitest/autorun'

class My_test < Minitest::Test

    def test_one
        assert_equal(1,1)
    end 

    def test_bcrypt
        password = "password"
        assert_equal(BCrypt::Password, encrypt_password(password).class)
    end 

    def test_bcrypt_match
        password = "password"
        encrypted_pw = encrypt_password(password)
        assert_equal(true, BCrypt::Password.new(encrypted_pw) == password)
    end 

    def test_verify
        password = "password"
        encrypted_pw = encrypt_password(password)
        assert_equal(true, verify_password(encrypted_pw, password))
    end 


end 