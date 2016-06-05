# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = 'qweqweqwe@gmail.com'
user.password = 'qweqweqwe'
user.password_confirmation = 'qweqweqwe'
user.name = 'First'
user.save!

user = User.new
user.email = 'asdasdasd@gmail.com'
user.password = 'asdasdasd'
user.password_confirmation = 'asdasdasd'
user.name = 'Second'
user.save!

user = User.new
user.email = 'zxczxczxc@gmail.com'
user.password = 'zxczxczxc'
user.password_confirmation = 'zxczxczxc'
user.name = 'Third'
user.save!

Company.create(
    user_id: '1',
    name: 'FirstCompany',
    description_short: 'FirstCompanyShortDescription',
    description_long: 'FirstCompanyLongDescription',
    web_address: 'www.company1.com'
)

Company.create(
    user_id: '1',
    name: 'SecondCompany',
    description_short: 'SecondCompanyShortDescription',
    description_long: 'SecondCompanyLongDescription',
    web_address: 'www.company2.com'
)

Telephone.create(
             company_id: '1',
             phone: '505050'
)

Telephone.create(
    company_id: '2',
    phone: '505051'
)

Address.create(
    company_id: '1',
    name: 'Kiev'
)

Address.create(
    company_id: '2',
    name: 'Lvov'
)

ElectronicMail.create(
    company_id: '1',
    email: '1534534534@gmail.com'
)

ElectronicMail.create(
    company_id: '2',
    email: '15345434534@gmail.com'
)