class Oenologist < ApplicationRecord
    has_many :oenologist_wines, dependent: :destroy
    has_many :wines, through: :oenologist_wines

    has_many :oenologist_job_title_magazines, dependent: :destroy
    has_many :job_titles, through: :oenologist_job_title_magazines
    has_many :magazines, through: :oenologist_job_title_magazines

    def set_references(arr_jobs)
        
        self.oenologist_job_title_magazines.destroy_all

        #arr_jobs = arr_jobs.reject{ |m| m.empty? }

        arr_jobs.each do |m, jobs|
            #if m != ''
            arr_jobs = arr_jobs.reject{ |m| m.empty? }
            jobs = jobs.reject{ |j| j.empty? }
            
            jobs.each do |j|
                #if j != ''
                temp_ojtm = OenologistJobTitleMagazine.new
                temp_ojtm.magazine = Magazine.find(m.to_i)
                temp_ojtm.job_title = JobTitle.find(j.to_i)
                temp_ojtm.oenologist = self
                temp_ojtm.save
            end
        end

    end
end
