require 'spec_helper'

describe Tinyforth do
  xit "executes empty code" do
    code_string = ""
    result = Tinyforth.execute(code_string)
    expect(result).to eq("")
  end

  xit "executes code made of spaces" do
    code_string = "   "
    result = Tinyforth.execute(code_string)
    expect(result).to eq("")
  end

  xit "executes simple code" do
    code_string = "42"
    result = Tinyforth.execute(code_string)
    expect(result).to eq("")
  end

  xit "executes code that prints out the top of the stack" do
    code_string = "42 ."
    result = Tinyforth.execute(code_string)
      expect(result).to eq("42")
    end
end
