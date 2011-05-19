Given /a product "([^\"]+)" with the description "([^\"]+)" and the price "([^\"]+)" that is valid to "([^\"]+)" and belongs to the category "([^\"]+)"/ do |name, description, price, valid_to, category_name|
  FileUtils.mkdir_p("#{fixtures_path}/products")
  
  @products ||= []
  
  category = @categories.select{|cat| cat[:name] == category_name}.first

  product = {
    :name => name, :description => description, :id => @products.length + 1,
    :unit_price => price, :valid_to => valid_to, :category_id => category[:id]
  }
  @products.push(product)
  
  File.open("#{fixtures_path}/products.json", 'w') do |f|
    f << @products.to_json
  end  
  
  File.open("#{fixtures_path}/products/#{@products.length}.json", 'w') do |f|
    f << product.to_json
  end
end