class Changecandidaterecrutorstatustobooleaninmatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :recrutor_status
    remove_column :matches, :candidate_status
  end
end
