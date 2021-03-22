class Wine < ApplicationRecord
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains


    def addStrainPercent(percents)
        percents.each do |strain_id, percentage|
            if percentage != ""
                temp_strain = self.wine_strains.where(strain_id: strain_id.to_i).first
                temp_strain.percentage = percentage.to_i
                temp_strain.save
            end
        end
    end

    def getPercentageByStrainId(strain_id)
        if self.wine_strains.where(strain_id: strain_id.to_i).first
            self.wine_strains.where(strain_id: strain_id.to_i).first.percentage
        end
    end
end
