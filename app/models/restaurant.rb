class Restaurant < ActiveRecord::Base
  has_many :reviews

	validates(:name, presence: true)
	validates(:cuisine, presence: true)
	validates(:description, presence: true)
	validates(:category, presence: true)
	validates(:phone, presence: true)
	validates(:address, presence: true)
	validates(:rating, presence: true)
	validates(:city, presence: true)
	validates(:latitude, presence: true)
	validates(:longitude, presence: true)
    validates :rating, :inclusion => {:in => [1,2,3,4,5]}
    validates :phone,:numericality => true,:length => { :maximum => 4 }
end
