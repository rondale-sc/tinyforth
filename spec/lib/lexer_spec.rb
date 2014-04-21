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
    expect(result).to eq([])
  end

  it "tokenizes numbers" do
    code_string = "42"
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:number, 42]])
  end

  it "tokenizes dot keywords" do
    code_string = "."
    result = lexer.tokenize(code_string)
    expect(result).to eq([[:keyword, "."]])
  end
end
