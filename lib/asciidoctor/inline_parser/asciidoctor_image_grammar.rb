# Autogenerated from a Treetop grammar. Edits may be lost.


module AsciidoctorImageGrammar
  include Treetop::Runtime

  def root
    @root ||= :image
  end

  module Image0
    def image_target
      elements[1]
    end

    def image_attrs
      elements[2]
    end
  end

  def _nt_image
    start_index = index
    if node_cache[:image].has_key?(index)
      cached = node_cache[:image][index]
      if cached
        node_cache[:image][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('image:', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'image:\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_image_target
      s0 << r2
      if r2
        r3 = _nt_image_attrs
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(Image,input, i0...index, s0)
      r0.extend(Image0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:image][start_index] = r0

    r0
  end

  def _nt_image_target
    start_index = index
    if node_cache[:image_target].has_key?(index)
      cached = node_cache[:image_target][index]
      if cached
        node_cache[:image_target][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^\\[]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^\\[]')
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
      r0 = instantiate_node(ImageTarget,input, i0...index, s0)
    end

    node_cache[:image_target][start_index] = r0

    r0
  end

  module ImageAttrs0
    def image_attrs_content
      elements[1]
    end

  end

  def _nt_image_attrs
    start_index = index
    if node_cache[:image_attrs].has_key?(index)
      cached = node_cache[:image_attrs][index]
      if cached
        node_cache[:image_attrs][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
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
      r2 = _nt_image_attrs_content
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
      r0 = instantiate_node(ImageAttributes,input, i0...index, s0)
      r0.extend(ImageAttrs0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:image_attrs][start_index] = r0

    r0
  end

  def _nt_image_attrs_content
    start_index = index
    if node_cache[:image_attrs_content].has_key?(index)
      cached = node_cache[:image_attrs_content][index]
      if cached
        node_cache[:image_attrs_content][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_image_attr_text_protected
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
            r5 = _nt_image_named_attr
            if r5
              r5 = SyntaxNode.new(input, (index-1)...index) if r5 == true
              r1 = r5
            else
              r6 = _nt_image_attr_text_unprotected
              if r6
                r6 = SyntaxNode.new(input, (index-1)...index) if r6 == true
                r1 = r6
              else
                @index = i1
                r1 = nil
              end
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
    r0 = instantiate_node(ImageAttributesContent,input, i0...index, s0)

    node_cache[:image_attrs_content][start_index] = r0

    r0
  end

  def _nt_image_attr_text_unprotected
    start_index = index
    if node_cache[:image_attr_text_unprotected].has_key?(index)
      cached = node_cache[:image_attr_text_unprotected][index]
      if cached
        node_cache[:image_attr_text_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
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
      r0 = instantiate_node(ImageAttributeValue,input, i0...index, s0)
    end

    node_cache[:image_attr_text_unprotected][start_index] = r0

    r0
  end

  module ImageAttrTextProtected0
    def image_text_protected
      elements[1]
    end

  end

  def _nt_image_attr_text_protected
    start_index = index
    if node_cache[:image_attr_text_protected].has_key?(index)
      cached = node_cache[:image_attr_text_protected][index]
      if cached
        node_cache[:image_attr_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
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
      r2 = _nt_image_text_protected
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
      r0 = instantiate_node(ImageAttributeValueProtected,input, i0...index, s0)
      r0.extend(ImageAttrTextProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:image_attr_text_protected][start_index] = r0

    r0
  end

  def _nt_image_text_protected
    start_index = index
    if node_cache[:image_text_protected].has_key?(index)
      cached = node_cache[:image_text_protected][index]
      if cached
        node_cache[:image_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
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
      r0 = instantiate_node(ImageAttributeValue,input, i0...index, s0)
    end

    node_cache[:image_text_protected][start_index] = r0

    r0
  end

  module ImageNamedAttr0
    def image_named_attr_key
      elements[0]
    end

    def image_named_attr_value
      elements[2]
    end
  end

  def _nt_image_named_attr
    start_index = index
    if node_cache[:image_named_attr].has_key?(index)
      cached = node_cache[:image_named_attr][index]
      if cached
        node_cache[:image_named_attr][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_image_named_attr_key
    s0 << r1
    if r1
      if (match_len = has_terminal?('=', false, index))
        r2 = true
        @index += match_len
      else
        terminal_parse_failure('\'=\'')
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_image_named_attr_value
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(ImageNamedAttribute,input, i0...index, s0)
      r0.extend(ImageNamedAttr0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:image_named_attr][start_index] = r0

    r0
  end

  def _nt_image_named_attr_key
    start_index = index
    if node_cache[:image_named_attr_key].has_key?(index)
      cached = node_cache[:image_named_attr_key][index]
      if cached
        node_cache[:image_named_attr_key][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^,=]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^,=]')
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
      r0 = instantiate_node(ImageNamedAttributeKey,input, i0...index, s0)
    end

    node_cache[:image_named_attr_key][start_index] = r0

    r0
  end

  def _nt_image_named_attr_value
    start_index = index
    if node_cache[:image_named_attr_value].has_key?(index)
      cached = node_cache[:image_named_attr_value][index]
      if cached
        node_cache[:image_named_attr_value][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    r1 = _nt_image_text_protected
    if r1
      r1 = SyntaxNode.new(input, (index-1)...index) if r1 == true
      r0 = r1
    else
      r2 = _nt_image_attr_text_protected
      if r2
        r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:image_named_attr_value][start_index] = r0

    r0
  end

  def _nt_image_attr_value_unprotected
    start_index = index
    if node_cache[:image_attr_value_unprotected].has_key?(index)
      cached = node_cache[:image_attr_value_unprotected][index]
      if cached
        node_cache[:image_attr_value_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
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
      r0 = instantiate_node(ImageAttributeValue,input, i0...index, s0)
    end

    node_cache[:image_attr_value_unprotected][start_index] = r0

    r0
  end

end

class AsciidoctorImageGrammarParser < Treetop::Runtime::CompiledParser
  include AsciidoctorImageGrammar
end

