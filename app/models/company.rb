class Company < ActiveRecord::Base

  mount_uploader :image, CompanyImageUploader

  has_many :job_vacancies, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :telephones, dependent: :destroy
  has_many :electronic_mails, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, allow_blank: false
  validates :description_short, presence: true, length: {minimum: 6}
  validates :description_long, presence: true, length: {minimum: 10}

end
