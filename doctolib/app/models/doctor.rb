class Doctor < ApplicationRecord
	has_many :appointements
	has_many :patients, through: :appointements
	has_many :link_specialties
	has_many :specialties, through: :link_specialties
	belongs_to :city
end
