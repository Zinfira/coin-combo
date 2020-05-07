
class Change
attr_accessor(:change, :quarter_counter, :dime_counter, :nickle_counter, :penny_counter)

  def initialize(change)
    @change = change
    @quarter_counter = 0
    @dime_counter = 0
    @nickle_counter = 0
    @penny_counter = 0
  end

  
  # def number_check(change)
  #   if change.is_a? == Integer do
  #     true
  #   end
  # end

  def quarter_check()
    until (@change < 25) do
      @quarter_counter +=1
      @change -=25
    end
    @quarter_counter 
  end
  
  def dime_check()
    until (@change < 10) do
      @dime_counter +=1
      @change -=10
    end
    @dime_counter
  end  

  def nickle_check()
    until (@change < 5) do
      @nickle_counter += 1
      @change -= 5
    end
    @nickle_counter
  end

  def change_check()
    self.quarter_check
    self.dime_check
    self.nickle_check
    @penny_counter = @change
  end

end