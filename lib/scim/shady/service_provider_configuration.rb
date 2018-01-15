module Scim
  module Shady
    class ServiceProviderConfiguration
      def initialize(json)
        @json = json
      end

      def documentation_uri
        to_h['documentationUri']
      end

      def patch
        to_h['patch']['supported']
      end

      def bulk_supported
        to_h['bulk']['supported']
      end

      def bulk_max_operations
        to_h['bulk']['maxOperations']
      end

      def bulk_max_payload_size
        to_h['bulk']['maxPayloadSize']
      end

      def filter_supported
        to_h['filter']['supported']
      end

      def filter_max_results
        to_h['filter']['maxResults']
      end

      def change_password_supported
        to_h['changePassword']['supported']
      end

      def to_h
        @hash ||= JSON.parse(to_json)
      end

      def to_json
        @json
      end
    end
  end
end
