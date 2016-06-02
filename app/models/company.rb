class Company < ActiveRecord::Base
  has_many :job_vacancies
  has_many :offers
  has_many :addresses
  has_many :telephones
  has_many :electronic_mails
  has_many :comments



end
