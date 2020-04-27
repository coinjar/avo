module Avocado
  module ResourceFields
    class TextField
      # extend Avocado::ResourceFields::Field
      attr_reader :name

      @@component = 'text-field'
      @@can_be_updated = true

      def initialize(*args)
        @name = args.first
      end

      def fetch_for_resource(resource)
        id = @name.to_s.parameterize

        {
          id: id,
          name: @name,
          component: @@component,
          value: resource[id],
          can_be_updated: @@can_be_updated
        }
      end
    end
  end
end