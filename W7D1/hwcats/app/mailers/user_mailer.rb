class UserMailer < ApplicationMailer
    default from: 'everybody@appacademy.io'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/cats/'
        mail(to: @user.username, subject: 'Welcome to my 99 cats website')
    end

end
