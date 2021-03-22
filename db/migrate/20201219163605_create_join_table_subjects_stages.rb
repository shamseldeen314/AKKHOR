class CreateJoinTableSubjectsStages < ActiveRecord::Migration[6.0]
  def change
    create_join_table :subjects, :stages do |t|
      # t.index [:subject_id, :stage_id]
      # t.index [:stage_id, :subject_id]
    end
  end
end
