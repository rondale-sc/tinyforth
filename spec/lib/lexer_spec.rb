require 'spec_helper'

describe Tinyforth::Lexer do
  let(:lexer) { Tinyforth::Lexer.new }

  it "tokenizes empty code" do
    code_string = ""
    result = lexer.tokenize(code_string)
    expect(result).to eq([])
  end

  it "tokenizes strings of spaces" do
    code_string = "   "
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:delimiter]])
  end

  it "tokenizes numbers" do
    code_string = " 42"
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:delimiter], [:number, "42"]])
  end

  it "tokenizes floats" do
    code_string = "42.0"
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:number, "42.0"]])
  end

  it "tokenizes dot keywords" do
    code_string = "."
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:keyword, "."]])
  end

  it "tokenizes words" do
    code_string = ":something"
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:word, ":something"]])
  end

  it "tokenizes names" do
    code_string = ": this_is_a_name"
    result = lexer.tokenize(code_string)
    expect(result).to eq([
      [:colon, ":"],
      [:delimiter],
      [:name, 'this_is_a_name']
    ])
  end

  it "tokenizes all the things" do
    code_string = "5 6 7 :+ ."
    expected_result = [
      [:number, "5"],
      [:delimiter],
      [:number, "6"],
      [:delimiter],
      [:number, "7"],
      [:delimiter],
      [:word, ":+"],
      [:delimiter],
      [:keyword, "."]
    ]
    result = lexer.tokenize(code_string)
    expect(result).to eq(expected_result)
  end
end
