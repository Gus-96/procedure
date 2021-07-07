class Search < ApplicationRecord
    def search_procedure
        procedure = Procedure.all 

        procedure = procedure.where(['title LIKE ?',"%#{title}%"]) if title.present?
        procedure = procedure.where(['description LIKE ?',"%#{description}%"])if description.present?
        return procedure
    end 
end