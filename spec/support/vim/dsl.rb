module Support
  module Vim
    module DSL

      def expr(str)
        vim.echo(str)
      end

      def press(keys)
        vim.normal(keys)
      end

      def bufname(str)
        expr("bufname('#{str}')")
      end

      def line(number)
        expr("getline(#{number})")
      end

      def exists(str)
        expr("exists('#{str}')").to_i != 0
      end

    end
  end
end
