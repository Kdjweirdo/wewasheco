class Renseignement < ApplicationRecord
    validates_presence_of :email, :description
end
