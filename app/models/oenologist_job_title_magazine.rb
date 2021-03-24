class OenologistJobTitleMagazine < ApplicationRecord
  belongs_to :oenologist
  belongs_to :job_title
  belongs_to :magazine
end
