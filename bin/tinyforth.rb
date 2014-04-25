
# line 1 "./ragel/tinyforth.rb.rl"

# line 25 "./ragel/tinyforth.rb.rl"


class Tinyforth::Lexer
  def initialize
    
# line 11 "./bin/tinyforth.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 8, 1, 9, 1, 
	10, 1, 11, 2, 2, 5, 2, 2, 
	6, 2, 2, 7
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 2, 15, 23, 26, 29, 31, 
	40, 48
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	48, 57, 32, 46, 58, 0, 8, 9, 
	13, 14, 47, 48, 57, 59, 127, 0, 
	8, 14, 31, 33, 47, 58, 127, 32, 
	9, 13, 46, 48, 57, 48, 57, 32, 
	0, 8, 9, 13, 14, 47, 58, 127, 
	0, 8, 14, 31, 33, 47, 58, 127, 
	32, 9, 13, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 0, 3, 0, 1, 1, 0, 1, 
	0, 1
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 5, 4, 1, 1, 1, 4, 
	4, 1
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 2, 11, 16, 19, 22, 24, 
	30, 35
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 0, 4, 5, 7, 2, 4, 2, 
	6, 2, 3, 2, 2, 2, 2, 8, 
	4, 4, 9, 11, 6, 10, 1, 10, 
	13, 12, 13, 12, 12, 3, 12, 12, 
	12, 12, 14, 13, 13, 15, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 6, 3, 0, 4, 3, 5, 3, 
	2, 2, 2, 1, 8, 9, 7, 7
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	15, 0, 25, 0, 0, 22, 5, 19, 
	17, 13, 11, 0, 0, 0, 9, 7
]

class << self
	attr_accessor :_lexer_to_state_actions
	private :_lexer_to_state_actions, :_lexer_to_state_actions=
end
self._lexer_to_state_actions = [
	0, 0, 1, 0, 0, 0, 0, 1, 
	0, 0
]

class << self
	attr_accessor :_lexer_from_state_actions
	private :_lexer_from_state_actions, :_lexer_from_state_actions=
end
self._lexer_from_state_actions = [
	0, 0, 3, 0, 0, 0, 0, 3, 
	0, 0
]

class << self
	attr_accessor :_lexer_eof_trans
	private :_lexer_eof_trans, :_lexer_eof_trans=
end
self._lexer_eof_trans = [
	0, 1, 0, 9, 10, 11, 11, 0, 
	15, 16
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 2;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 2;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_name
end
self.lexer_en_name = 7;
class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 2;


# line 30 "./ragel/tinyforth.rb.rl"
  end

  def tokenize(data)
    eof = data.size
    line = 1
    tokens = []
    
# line 161 "./bin/tinyforth.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 37 "./ragel/tinyforth.rb.rl"
    
# line 173 "./bin/tinyforth.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_acts = _lexer_from_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 207 "./bin/tinyforth.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _lexer_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 2 then
# line 1 "NONE"
		begin
te = p+1
		end
when 3 then
# line 14 "./ragel/tinyforth.rb.rl"
		begin
te = p
p = p - 1; begin  tokens << [:delimiter]  end
		end
when 4 then
# line 15 "./ragel/tinyforth.rb.rl"
		begin
te = p
p = p - 1; begin  tokens << [:name, data[ts..te-1]]; 	begin
		cs = 2
		_trigger_goto = true
		_goto_level = _again
		break
	end
  end
		end
when 5 then
# line 19 "./ragel/tinyforth.rb.rl"
		begin
act = 3;		end
when 6 then
# line 20 "./ragel/tinyforth.rb.rl"
		begin
act = 4;		end
when 7 then
# line 21 "./ragel/tinyforth.rb.rl"
		begin
act = 5;		end
when 8 then
# line 22 "./ragel/tinyforth.rb.rl"
		begin
te = p
p = p - 1; begin  tokens << [:number, data[ts..te-1]]  end
		end
when 9 then
# line 23 "./ragel/tinyforth.rb.rl"
		begin
te = p
p = p - 1; begin  tokens << [:delimiter]  end
		end
when 10 then
# line 22 "./ragel/tinyforth.rb.rl"
		begin
 begin p = ((te))-1; end
 begin  tokens << [:number, data[ts..te-1]]  end
		end
when 11 then
# line 1 "NONE"
		begin
	case act
	when 3 then
	begin begin p = ((te))-1; end
 tokens << [:colon, data[ts..te-1]]; 	begin
		cs = 7
		_trigger_goto = true
		_goto_level = _again
		break
	end
 end
	when 4 then
	begin begin p = ((te))-1; end
 tokens << [:keyword, data[ts..te-1]] end
	when 5 then
	begin begin p = ((te))-1; end
 tokens << [:word, data[ts..te-1]] end
end 
			end
# line 348 "./bin/tinyforth.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _lexer_to_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 368 "./bin/tinyforth.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _lexer_eof_trans[cs] > 0
		_trans = _lexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 38 "./ragel/tinyforth.rb.rl"
    tokens
  end
end
