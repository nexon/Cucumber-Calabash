Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)
end

# Then
Then(/^Then I slide "(.*?)" to (\d+)$/) do |name, index|
  wait_for_elements_exist "UISlider"
  #get details about slider. then calculate coordinates of each index and tap_point
  z = query("UISlider").first["rect"]
  total_slider_length = z["width"] - z["x"]
  slice_length = total_slider_length / 100
  if index == 0
    tap_point(z["x"], z["y"])
  else
    tap_point((index.to_i+1)*slice_length, z["y"])
  end
end

Then(/^I expect to see my name "(.*?)" in navbar$/) do |name|
  macro %(I wait to see a navigation bar titled "#{name}")
end

# When

When(/^I fill in "(.*?)" with Email$/) do |arg|
  macro %(I enter "#{Faker::Internet.email}" into the "#{arg}" text field)
end

When(/^I fill in "(.*?)" with Password$/) do |arg|
  macro %(I enter "#{Faker::Internet.password}" into the "#{arg}" text field)
end

