def currency_of(country)
  case country
  when :japan
    puts 'yen'
  when :us
    puts 'us'
  when :india
    puts 'india'
  else
    raise ArgumentError, "無効な国名です #{country}"
  end
end

currency_of(:japan)
currency_of(:hoge)
