require 'minitest/autorun'
require 'p_nmax'

class PNmaxTest < Minitest::Test
  def test_scan_numbers
    n = 3
    current_array = []
    lorem = "L1orem ipsum dolor sit amet,
      consectetur adipiscing elit,
      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

    3.times do |i|
      current_array << rand(1..100000)
      lorem.insert(i*lorem.length/2, current_array.last.to_s)
    end

    assert_equal current_array.max(n),
      PNmax.scan_nums(StringIO.new(lorem), n)
  end
end
