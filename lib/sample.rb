# typed: true

require 'sorbet-runtime'

class A
  extend T::Sig

  sig { params(x: Integer).returns(String) }
  def foo(x)
    x.to_s
  end
end

puts A.new.foo(1) # => "1"
