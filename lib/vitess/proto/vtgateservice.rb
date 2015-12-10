# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: vtgateservice.proto

require 'google/protobuf'
require 'grpc'

require 'proto/vtgate'

module Vtgate
  class Service
    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'vtgateservice.Vitess'

    rpc :Execute, ExecuteRequest, ExecuteResponse
    #rpc :ExecuteShards, ExecuteShardsRequest, ExecuteShardsResponse
    rpc :ExecuteKeyspaceIds, ExecuteKeyspaceIdsRequest, ExecuteKeyspaceIdsResponse
    #rpc :ExecuteKeyRanges, ExecuteKeyRangesRequest, ExecuteKeyRangesResponse
    #rpc :ExecuteEntityIds, ExecuteEntityIdsRequest, ExecuteEntityIdsResponse
    #rpc :ExecuteBatchShards, ExecuteBatchShardsRequest, ExecuteBatchShardsResponse
    #rpc :ExecuteBatchKeyspaceIds, ExecuteBatchKeyspaceIdsRequest, ExecuteBatchKeyspaceIdsResponse
    #rpc :StreamExecute, StreamExecuteRequest, stream(StreamExecuteResponse)
    #rpc :StreamExecuteShards, StreamExecuteShardsRequest, stream(StreamExecuteShardsResponse)
    #rpc :StreamExecuteKeyspaceIds, StreamExecuteKeyspaceIdsRequest, stream(StreamExecuteKeyspaceIdsResponse)
    #rpc :StreamExecuteKeyRanges, StreamExecuteKeyRangesRequest, stream(StreamExecuteKeyRangesResponse)
    rpc :Begin, BeginRequest, BeginResponse
    rpc :Commit, CommitRequest, CommitResponse
    #rpc :Rollback, RollbackRequest, RollbackResponse
    #rpc :SplitQuery, SplitQueryRequest, SplitQueryResponse
    rpc :GetSrvKeyspace, GetSrvKeyspaceRequest, GetSrvKeyspaceResponse
  end

  Stub = Service.rpc_stub_class
end
