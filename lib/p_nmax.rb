class PNmax

  class << self

    def scan_nums(stdin, argv)
      glue_nums(stdin).max(argv)
    end

    def glue_nums(input)
      nums_array = []

      until input.eof?
        unless (nums_array << input.read(1).scan(/\d/)[0]).last || (nums_array[-2])
          nums_array.pop
        end
      end
      nums_array
        .join(',')
        .gsub(/(?!\,{2,})\,/, '')
        .split(',')
        .map(&:to_i)
    end
  end
end


