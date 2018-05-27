class PassedOrFailed

  def initialize (results, treshold)
    @hash = results
    @score = treshold.to_i
    @pass = Hash.new
    @fail = Hash.new
    # unless @score.is_a? Integer
    #     raise "Input error - score must be an integer"
    # end
  end

  def iterate
    @hash.each do |key, value|
      if value.to_i >= @score
        @pass[key] = value.to_i
      else
        @fail[key] = value.to_i
      end
    end
  end

  def perform
    iterate
    res = Hash.new
    res[:passed]=@pass
    res[:failed]=@fail
    res
  end

end
#hash = {"Mark" => 10, "Ellen" => 65, "Roger" => 20, "Mike" => 70}


#PassedOrFailed.new(hash, 10).result
