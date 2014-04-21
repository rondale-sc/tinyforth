%%{
 machine lexer;

 # Machine
 whitespace = " ";
 number = [0-9]+;
 keyword = ".";

 # Actions
￼￼
 main := |*
   whitespace;  # ignore
   number => { tokens << [:number, data[ts..te].to_i] };
   keyword => { tokens << [:keyword, data[ts...te]] };
 *|;

}%%

class Tinyforth::Lexer
  def initialize
    %% write data;
  end

  def tokenize(data)
    eof = data.size
    line = 1
    tokens = []
    %% write init;
    %% write exec;
    tokens
  end
end
