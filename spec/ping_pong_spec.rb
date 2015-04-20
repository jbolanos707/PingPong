require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("will count up the number inputed") do
    expect((2).ping_pong()).to(eq([1,2]))
  end

  it("if it is divisible by 3, return ping") do
    expect((3).ping_pong()).to(eq([1,2,"ping"]))
  end

end
