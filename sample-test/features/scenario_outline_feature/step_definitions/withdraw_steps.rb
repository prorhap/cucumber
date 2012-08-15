Given /^I have \$(\d+) in my account$/ do |balance|
  @balance = balance
end

When /^I choose to withdraw the fixed amount of \$(\d+)$/ do |withdraw|
  @withdraw = withdraw
end

Then /^I should receive \$(\d+) cash$/ do |receive|
  receive == @withdraw 
end

Then /^the balance of my account should be \$(\d+)$/ do |remaining|
  result = @balance.to_i - @withdraw.to_i
  remaining == result
end