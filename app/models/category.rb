class Category < ActiveRecord::Base
  has_many :job_vacancies
end
