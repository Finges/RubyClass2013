class AutoShop < Business


  def initialize name, tax_id, employee
    super(name,tax_id)
    @employees = [employee]   
  end

  def employees
    @employees
  end

  def append_employees emp_array
    emp_array.each{|x| @employees<<x}
  end

  def employee_list
    temp_string = ""
    @employees.each do |x|
      temp_string += "#{x.name}\n"
    end
    temp_string.chomp
  end
end
