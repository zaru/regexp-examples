class Regexp
  module Examples
    def examples(options={})
      full_examples = RegexpExamples.map_results(
        RegexpExamples::Parser.new(source, options).parse
      )
      RegexpExamples::BackReferenceReplacer.new.substitute_backreferences(full_examples)
    end
  end
  include Examples
end

