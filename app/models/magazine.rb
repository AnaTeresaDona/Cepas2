class Magazine < ApplicationRecord
    has_many :oenologist_job_title_magazines, dependent: :destroy
    has_many :job_titles, through: :oenologist_job_title_magazines
    has_many :oenologists, through: :oenologist_job_title_magazines
end
