class Oenologist < ApplicationRecord
    has_many :oenologist_wines, dependent: :destroy
    has_many :wines, through: :oenologist_wines

    has_many :oenologist_job_title_magazines, dependent: :destroy
    has_many :job_titles, through: :oenologist_job_title_magazines
    has_many :magazines, through: :oenologist_job_title_magazines
end
