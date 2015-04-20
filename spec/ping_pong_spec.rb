require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("will count up the number inputed") do
    expect((2).ping_pong()).to(eq([1,2]))
  end

  it("if it is divisible by 3, return ping") do
    expect((3).ping_pong()).to(eq([1,2,"ping"]))
  end

  it("if it is divisible by 5, return pong") do
    expect((5).ping_pong()).to(eq([1,2,"ping",4,"pong"]))
  end

  it("if it is divisible by 3 and 5, return ping pong") do
    expect((15).ping_pong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
  end
end
