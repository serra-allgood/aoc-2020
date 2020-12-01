class ExpenseReport
  # def self.calculate
  #   report_lines = File.read('./input.txt').split("\n").map(&:to_i)
  #   report_hash = report_lines.collect { |line| [line, line] }.to_h
  #   encountered_lines = []
  #   report_lines.each do |line|
  #     encountered_lines << line
  #     next if encountered_lines.length < 2
  #     encountered_lines.each do |e_line|
  #       subtract_value = 2020 - (e_line + line)
  #       found = report_hash[subtract_value]
  #       if found
  #         return e_line * line * found
  #       end
  #     end
  #   end
  # end

  # Part One
  def self.calculate
    report_lines = File.read('./input.txt').split("\n").map(&:to_i)
    report_hash = report_lines.collect { |line| [line, line] }.to_h
    report_lines.each do |line|
      subtract_value = 2020 - line
      found = report_hash[subtract_value]
      if found
        return found * line
      end
    end
  end
end

p ExpenseReport.calculate
