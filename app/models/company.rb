class Company < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search_by_name, against: :name

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

  accepts_nested_attributes_for :addresses, reject_if: lambda {
                                              |attributes| attributes[:name].blank?
                                          }
  accepts_nested_attributes_for :telephones, reject_if: lambda {
                                               |attributes| attributes[:phone].blank?
                                           }
  accepts_nested_attributes_for :electronic_mails, reject_if: lambda {
                                                     |attributes| attributes[:email].blank?
                                                 }
  
  def self.all_owned_by_user(user)
    self.where("user_id = ?", user)
  end

end
