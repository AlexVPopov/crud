class Car < ActiveRecord::Base
  has_paper_trail

  validates :model, :model_year_month, :kilometers, :color, presence: true
  validates :kilometers, numericality: { only_integer: true,
                                         greater_than_or_equal_to: 0 }
  validate :valid_model_year_month
  validate :valid_ages

  private

    def valid_ages
      if ages.include? 0
        errors.add :ages, 'cannot contain a string or zero.'
      end
    end

    def valid_model_year_month
      unless model_year_month.is_a? Date
        errors.add :model_year_month, 'is not a Date type.'
      end
    end
end
