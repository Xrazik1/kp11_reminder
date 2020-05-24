class Week < ApplicationRecord
  belongs_to :group

  has_many :days

  validates_length_of :days, maximum: 7

  DAYS_IN_WEEK = 7

  def initialize(attributes={})
    super
    self.days = generate_empty_week
  end

  def sorted_days
    handle_days_relevance unless days_relevant?(days)
    days.sort_by &:date
  end

  private

  def generate_week
    generate_empty_week
  end

  def handle_days_relevance
    valid_days = []

    days.sort_by(&:date).each do |day|
      valid_days << day if day_relevant?(day)
    end

    difference = DAYS_IN_WEEK - valid_days.size

    unless difference.zero?
      first_valid_date = Date.today + difference

      (1..difference).each do |i|
        valid_days << generate_day(first_valid_date - i)
      end

      self.days = valid_days
      self.save
    end
  end

  def generate_empty_week
    week = []

    (0..DAYS_IN_WEEK - 1).each do |i|
      week << generate_day(Date.today + i)
    end

    week
  end

  def generate_relevant_dates
    dates = []

    (0..DAYS_IN_WEEK - 1).each do |i|
      day = Date.today + i
      dates << day.strftime("%d.%m.%Y")
    end

    dates
  end

  def generate_day(date)
    day         = Day.new

    day.name    = day_to_human(date.strftime("%A"))
    day.date    = (date.strftime("%d.%m.%Y")).to_str

    day.week = self
    day.save

    day
  end

  def day_to_human(name)
    case name
    when 'Monday'
      return 'Понедельник'
    when 'Tuesday'
      return 'Вторник'
    when 'Wednesday'
      return 'Среда'
    when 'Thursday'
      return 'Четверг'
    when 'Friday'
      return 'Пятница'
    when 'Saturday'
      return 'Суббота'
    when 'Sunday'
      return 'Воскресенье'
    else
      return nil
    end
  end

  def days_relevant?(days)
    return false unless days.size == DAYS_IN_WEEK

    relevant_dates = generate_relevant_dates

    days.each do |day|
      return false unless relevant_dates.include? day.date
    end

    true
  end

  def day_relevant?(day)
    generate_relevant_dates.include? day.date
  end
end
