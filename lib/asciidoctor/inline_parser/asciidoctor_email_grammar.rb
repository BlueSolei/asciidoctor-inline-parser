# Autogenerated from a Treetop grammar. Edits may be lost.


module AsciidoctorEmailGrammar
  include Treetop::Runtime

  def root
    @root ||= :escaped_implicit_email
  end

  module EscapedImplicitEmail0
    def implicit_email
      elements[1]
    end
  end

  def _nt_escaped_implicit_email
    start_index = index
    if node_cache[:escaped_implicit_email].has_key?(index)
      cached = node_cache[:escaped_implicit_email][index]
      if cached
        node_cache[:escaped_implicit_email][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('\\', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'\\\\\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_implicit_email
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(EscapedEmail,input, i0...index, s0)
      r0.extend(EscapedImplicitEmail0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:escaped_implicit_email][start_index] = r0

    r0
  end

  module EscapedExplicitEmail0
    def explicit_email
      elements[1]
    end
  end

  def _nt_escaped_explicit_email
    start_index = index
    if node_cache[:escaped_explicit_email].has_key?(index)
      cached = node_cache[:escaped_explicit_email][index]
      if cached
        node_cache[:escaped_explicit_email][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('\\', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'\\\\\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_explicit_email
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(EscapedEmail,input, i0...index, s0)
      r0.extend(EscapedExplicitEmail0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:escaped_explicit_email][start_index] = r0

    r0
  end

  module ExplicitEmail0
    def implicit_email
      elements[1]
    end

    def email_attrs
      elements[2]
    end
  end

  def _nt_explicit_email
    start_index = index
    if node_cache[:explicit_email].has_key?(index)
      cached = node_cache[:explicit_email][index]
      if cached
        node_cache[:explicit_email][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('mailto:', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'mailto:\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_implicit_email
      s0 << r2
      if r2
        r3 = _nt_email_attrs
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(EmailMacro,input, i0...index, s0)
      r0.extend(ExplicitEmail0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:explicit_email][start_index] = r0

    r0
  end

  module ImplicitEmail0
    def email_name
      elements[0]
    end

    def email_domain
      elements[2]
    end
  end

  def _nt_implicit_email
    start_index = index
    if node_cache[:implicit_email].has_key?(index)
      cached = node_cache[:implicit_email][index]
      if cached
        node_cache[:implicit_email][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_email_name
    s0 << r1
    if r1
      if (match_len = has_terminal?('@', false, index))
        r2 = true
        @index += match_len
      else
        terminal_parse_failure('\'@\'')
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_email_domain
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(Email,input, i0...index, s0)
      r0.extend(ImplicitEmail0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:implicit_email][start_index] = r0

    r0
  end

  def _nt_email_name
    start_index = index
    if node_cache[:email_name].has_key?(index)
      cached = node_cache[:email_name][index]
      if cached
        node_cache[:email_name][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_word
      if r2
        r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
        r1 = r2
      else
        if has_terminal?(@regexps[gr = '\A[\\.%+\\-]'] ||= Regexp.new(gr), :regexp, index)
          r3 = true
          @index += 1
        else
          terminal_parse_failure('[\\.%+\\-]')
          r3 = nil
        end
        if r3
          r3 = SyntaxNode.new(input, (index-1)...index) if r3 == true
          r1 = r3
        else
          @index = i1
          r1 = nil
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    end

    node_cache[:email_name][start_index] = r0

    r0
  end

  module EmailDomain0
    def word
      elements[0]
    end

  end

  def _nt_email_domain
    start_index = index
    if node_cache[:email_domain].has_key?(index)
      cached = node_cache[:email_domain][index]
      if cached
        node_cache[:email_domain][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_word
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        i3 = index
        r4 = _nt_email_tld
        if r4
          r4 = SyntaxNode.new(input, (index-1)...index) if r4 == true
          r3 = r4
        else
          r5 = _nt_word
          if r5
            r5 = SyntaxNode.new(input, (index-1)...index) if r5 == true
            r3 = r5
          else
            @index = i3
            r3 = nil
          end
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(EmailDomain0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:email_domain][start_index] = r0

    r0
  end

  module EmailTld0
  end

  def _nt_email_tld
    start_index = index
    if node_cache[:email_tld].has_key?(index)
      cached = node_cache[:email_tld][index]
      if cached
        node_cache[:email_tld][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('.', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'.\'')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        r3 = _nt_alpha
        if r3
          s2 << r3
        else
          break
        end
        if s2.size == 4
          break
        end
      end
      if s2.size < 1
        @index = i2
        r2 = nil
      else
        if s2.size < 4
          @terminal_failures.pop
        end
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(EmailTld0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:email_tld][start_index] = r0

    r0
  end

  module EmailAttrs0
    def email_attrs_content
      elements[1]
    end

  end

  def _nt_email_attrs
    start_index = index
    if node_cache[:email_attrs].has_key?(index)
      cached = node_cache[:email_attrs][index]
      if cached
        node_cache[:email_attrs][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('[', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'[\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_email_attrs_content
      s0 << r2
      if r2
        if (match_len = has_terminal?(']', false, index))
          r3 = true
          @index += match_len
        else
          terminal_parse_failure('\']\'')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(EmailAttributes,input, i0...index, s0)
      r0.extend(EmailAttrs0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:email_attrs][start_index] = r0

    r0
  end

  def _nt_email_attrs_content
    start_index = index
    if node_cache[:email_attrs_content].has_key?(index)
      cached = node_cache[:email_attrs_content][index]
      if cached
        node_cache[:email_attrs_content][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_email_attr_text_protected
      if r2
        r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
        r1 = r2
      else
        if (match_len = has_terminal?(',', false, index))
          r3 = true
          @index += match_len
        else
          terminal_parse_failure('\',\'')
          r3 = nil
        end
        if r3
          r3 = SyntaxNode.new(input, (index-1)...index) if r3 == true
          r1 = r3
        else
          if (match_len = has_terminal?(' ', false, index))
            r4 = true
            @index += match_len
          else
            terminal_parse_failure('\' \'')
            r4 = nil
          end
          if r4
            r4 = SyntaxNode.new(input, (index-1)...index) if r4 == true
            r1 = r4
          else
            r5 = _nt_email_attr_text_unprotected
            if r5
              r5 = SyntaxNode.new(input, (index-1)...index) if r5 == true
              r1 = r5
            else
              @index = i1
              r1 = nil
            end
          end
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(EmailAttributesContent,input, i0...index, s0)

    node_cache[:email_attrs_content][start_index] = r0

    r0
  end

  def _nt_email_attr_text_unprotected
    start_index = index
    if node_cache[:email_attr_text_unprotected].has_key?(index)
      cached = node_cache[:email_attr_text_unprotected][index]
      if cached
        node_cache[:email_attr_text_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^,\\]]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^,\\]]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(EmailText,input, i0...index, s0)
    end

    node_cache[:email_attr_text_unprotected][start_index] = r0

    r0
  end

  module EmailAttrTextProtected0
    def email_text_protected
      elements[1]
    end

  end

  def _nt_email_attr_text_protected
    start_index = index
    if node_cache[:email_attr_text_protected].has_key?(index)
      cached = node_cache[:email_attr_text_protected][index]
      if cached
        node_cache[:email_attr_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('"', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'"\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_email_text_protected
      s0 << r2
      if r2
        if (match_len = has_terminal?('"', false, index))
          r3 = true
          @index += match_len
        else
          terminal_parse_failure('\'"\'')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(EmailTextProtected,input, i0...index, s0)
      r0.extend(EmailAttrTextProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:email_attr_text_protected][start_index] = r0

    r0
  end

  def _nt_email_text_protected
    start_index = index
    if node_cache[:email_text_protected].has_key?(index)
      cached = node_cache[:email_text_protected][index]
      if cached
        node_cache[:email_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^"]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^"]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(EmailText,input, i0...index, s0)
    end

    node_cache[:email_text_protected][start_index] = r0

    r0
  end

end

class AsciidoctorEmailGrammarParser < Treetop::Runtime::CompiledParser
  include AsciidoctorEmailGrammar
end
