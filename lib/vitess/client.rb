current_dir = File.expand_path(File.dirname(__FILE__))
proto_dir   = File.join(current_dir + '/lib/vitessproto')
$LOAD_PATH.unshift(current_dir)
$LOAD_PATH.unshift(proto_dir)

require 'google/protobuf'

require 'proto/query'
require 'proto/vtgate'
require 'proto/vtgateservice'

# load Vtctl
require 'vtctl/client'

# Util
require 'socket'

# debug
require 'pry-byebug'

module Vitess
  class Util
    NETWORK_INTERFACE_NAMES = ["eth0", "en0"]

    class << self
      def process_id
        Process.pid
      end

      def local_ip_address
        Socket.getifaddrs.select(&:broadaddr).find{ |ip_addr| NETWORK_INTERFACE_NAMES.include?(ip_addr.name) && ip_addr.addr.ipv4? }
      end
    end
  end

  class Client
    class << self
      attr_accessor :host

      def host
        '192.168.99.100:15002'
        #'localhost:45678'
      end

      def connect
         vtgate_service.begin(Vtgate::BeginRequest.new(caller_id: caller_id(:connect)))
      end

      def commit(args={})
        vtgate_service.commit(Vtgate::CommitRequest.new(args))
      end

      def end
      end

      def get_server_keyspace(keyspace_name='')
        vtgate_service.get_srv_keyspace(Vtgate::GetSrvKeyspaceRequest.new({ keyspace: keyspace_name }))
      end

      def query(sql, tablet_type: 1)
        session = Vtgate::Session.new
        vtgate_service.execute(Vtgate::ExecuteRequest.new({ caller_id: caller_id(:query), session: session, query: bound_query(sql), tablet_type: tablet_type}))
      end

      def query_with_keyspace_ids(sql, keyspace: "", session: Vtgate::Session.new)
        args    = {
          caller_id: caller_id(:query_with_keyspace_ids),
          session:   session,
          query:     bound_query(sql),
          keyspace:  keyspace,
          keyspace_ids: ['0'.encode('ASCII-8BIT')],
          tablet_type: 1
        }
        request = Vtgate::ExecuteKeyspaceIdsRequest.new(args)
        vtgate_service.execute_keyspace_ids(request)
      end

      private

      def bound_query(sql)
        Query::BoundQuery.new(sql: sql,bind_variables: {})
      end

      def vtgate_service
        @vtgate_service ||= Vtgate::Stub.new(host)
      end

      def caller_id(method_name="", options: {})
        # FIXME : need to handle potentially possible exceptions
        principal = Vitess::Util.local_ip_address.addr.ip_address.encode("UTF-8")
        component = "process_id: #{Vitess::Util.process_id.to_s}"
        Vtrpc::CallerID.new({principal: principal, component: component, subcomponent: method_name.to_s})
      end
    end
  end
end

