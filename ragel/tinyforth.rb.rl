%%{
 machine lexer;

 # Machine
 colon      = ":";
 keyword    = ".";
 number     = digit+ ("." digit+)?;
 whitespace = space+;
 word       = (ascii - space - number)+;

 # Actions
￼￼
 name := |*
  whitespace => { tokens << [:delimiter] };
  word       => { tokens << [:name, data[ts..te-1]]; fgoto main; };
 *|;

 main := |*
   colon      => { tokens << [:colon, data[ts..te-1]]; fgoto name; };
   keyword    => { tokens << [:keyword, data[ts..te-1]] };
   word       => { tokens << [:word, data[ts..te-1]] };
   number     => { tokens << [:number, data[ts..te-1]] };
   whitespace => { tokens << [:delimiter] };
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
