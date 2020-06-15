class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if !data.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      data.errors[:title] << "Invalid Title"
    end
  end
end
