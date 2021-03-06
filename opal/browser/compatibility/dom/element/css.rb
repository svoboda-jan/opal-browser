module Browser; module DOM; class Element

unless C.respond_to?(:Element, :querySelectorAll)
  if C.sizzle?
    def css(path)
      NodeSet.new(document, `Sizzle(#{path}, #@native)`)
    end
  else
    def css(*)
      raise NotImplementedError, 'fetching by selector unsupported'
    end
  end
end

end; end; end
