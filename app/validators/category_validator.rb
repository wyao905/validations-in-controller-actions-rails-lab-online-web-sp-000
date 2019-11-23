class CategoryValidator < ActiveModel::Validator
  def validate(record)
    unless record.category == "Fiction" || record.category == "Non-Fiction"
      record.errors[:category] << "Must be 'Fiction' or 'Non-Fiction'."
    end
  end
end