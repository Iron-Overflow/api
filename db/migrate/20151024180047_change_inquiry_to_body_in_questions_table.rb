class ChangeInquiryToBodyInQuestionsTable < ActiveRecord::Migration
  def change
    rename_column :questions, :inquiry, :body
  end
end
