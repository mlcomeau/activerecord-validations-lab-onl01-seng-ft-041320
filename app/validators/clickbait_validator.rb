class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if !record.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      record.errors[:title] << "Invalid Title"
    end
  end
end
