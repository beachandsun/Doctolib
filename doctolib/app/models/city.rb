class City < ApplicationRecord
	has_many :appointements
	has_many :doctors 
	has_many :patients
end
