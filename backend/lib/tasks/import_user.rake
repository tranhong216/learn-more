namespace :db do
  task import_users: :environment do
    puts "Import Admin"
    User.create email: "tran.manh.hong@sun-asterisk.com", password: "Aa@123456", is_admin: true
    puts "Import User"
    User.create email: "user@user.com", password: "Aa@123456"
  end
end
