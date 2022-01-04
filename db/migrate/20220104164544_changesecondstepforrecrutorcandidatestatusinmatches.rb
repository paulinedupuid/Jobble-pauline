class Changesecondstepforrecrutorcandidatestatusinmatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :recrutor_status, :boolean
    add_column :matches, :candidate_status, :boolean
  end
end
