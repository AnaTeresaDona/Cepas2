class JobTitle < ApplicationRecord
    has_many :oenologist_job_title_magazines, dependent: :destroy
    has_many :oenologists, through: :oenologist_job_title_magazines
    has_many :magazines, through: :oenologist_job_title_magazines
end
