# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tabletmanagerdata.proto

require 'google/protobuf'

require 'query'
require 'topodata'
require 'replicationdata'
require 'logutil'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tabletmanagerdata.TableDefinition" do
    optional :name, :string, 1
    optional :schema, :string, 2
    repeated :columns, :string, 3
    repeated :primary_key_columns, :string, 4
    optional :type, :string, 5
    optional :data_length, :uint64, 6
    optional :row_count, :uint64, 7
  end
  add_message "tabletmanagerdata.SchemaDefinition" do
    optional :database_schema, :string, 1
    repeated :table_definitions, :message, 2, "tabletmanagerdata.TableDefinition"
    optional :version, :string, 3
  end
  add_message "tabletmanagerdata.UserPermission" do
    optional :host, :string, 1
    optional :user, :string, 2
    optional :password_checksum, :uint64, 3
    map :privileges, :string, :string, 4
  end
  add_message "tabletmanagerdata.DbPermission" do
    optional :host, :string, 1
    optional :db, :string, 2
    optional :user, :string, 3
    map :privileges, :string, :string, 4
  end
  add_message "tabletmanagerdata.Permissions" do
    repeated :user_permissions, :message, 1, "tabletmanagerdata.UserPermission"
    repeated :db_permissions, :message, 2, "tabletmanagerdata.DbPermission"
  end
  add_message "tabletmanagerdata.BlpPosition" do
    optional :uid, :uint32, 1
    optional :position, :string, 2
  end
  add_message "tabletmanagerdata.PingRequest" do
    optional :payload, :string, 1
  end
  add_message "tabletmanagerdata.PingResponse" do
    optional :payload, :string, 1
  end
  add_message "tabletmanagerdata.SleepRequest" do
    optional :duration, :int64, 1
  end
  add_message "tabletmanagerdata.SleepResponse" do
  end
  add_message "tabletmanagerdata.ExecuteHookRequest" do
    optional :name, :string, 1
    repeated :parameters, :string, 2
    map :extra_env, :string, :string, 3
  end
  add_message "tabletmanagerdata.ExecuteHookResponse" do
    optional :exit_status, :int64, 1
    optional :stdout, :string, 2
    optional :stderr, :string, 3
  end
  add_message "tabletmanagerdata.GetSchemaRequest" do
    repeated :tables, :string, 1
    optional :include_views, :bool, 2
    repeated :exclude_tables, :string, 3
  end
  add_message "tabletmanagerdata.GetSchemaResponse" do
    optional :schema_definition, :message, 1, "tabletmanagerdata.SchemaDefinition"
  end
  add_message "tabletmanagerdata.GetPermissionsRequest" do
  end
  add_message "tabletmanagerdata.GetPermissionsResponse" do
    optional :permissions, :message, 1, "tabletmanagerdata.Permissions"
  end
  add_message "tabletmanagerdata.SetReadOnlyRequest" do
  end
  add_message "tabletmanagerdata.SetReadOnlyResponse" do
  end
  add_message "tabletmanagerdata.SetReadWriteRequest" do
  end
  add_message "tabletmanagerdata.SetReadWriteResponse" do
  end
  add_message "tabletmanagerdata.ChangeTypeRequest" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
  end
  add_message "tabletmanagerdata.ChangeTypeResponse" do
  end
  add_message "tabletmanagerdata.RefreshStateRequest" do
  end
  add_message "tabletmanagerdata.RefreshStateResponse" do
  end
  add_message "tabletmanagerdata.RunHealthCheckRequest" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
  end
  add_message "tabletmanagerdata.RunHealthCheckResponse" do
  end
  add_message "tabletmanagerdata.ReloadSchemaRequest" do
  end
  add_message "tabletmanagerdata.ReloadSchemaResponse" do
  end
  add_message "tabletmanagerdata.PreflightSchemaRequest" do
    optional :change, :string, 1
  end
  add_message "tabletmanagerdata.PreflightSchemaResponse" do
    optional :before_schema, :message, 1, "tabletmanagerdata.SchemaDefinition"
    optional :after_schema, :message, 2, "tabletmanagerdata.SchemaDefinition"
  end
  add_message "tabletmanagerdata.ApplySchemaRequest" do
    optional :sql, :string, 1
    optional :force, :bool, 2
    optional :allow_replication, :bool, 3
    optional :before_schema, :message, 4, "tabletmanagerdata.SchemaDefinition"
    optional :after_schema, :message, 5, "tabletmanagerdata.SchemaDefinition"
  end
  add_message "tabletmanagerdata.ApplySchemaResponse" do
    optional :before_schema, :message, 1, "tabletmanagerdata.SchemaDefinition"
    optional :after_schema, :message, 2, "tabletmanagerdata.SchemaDefinition"
  end
  add_message "tabletmanagerdata.ExecuteFetchAsDbaRequest" do
    optional :query, :string, 1
    optional :db_name, :string, 2
    optional :max_rows, :uint64, 3
    optional :disable_binlogs, :bool, 4
    optional :reload_schema, :bool, 5
  end
  add_message "tabletmanagerdata.ExecuteFetchAsDbaResponse" do
    optional :result, :message, 1, "query.QueryResult"
  end
  add_message "tabletmanagerdata.ExecuteFetchAsAppRequest" do
    optional :query, :string, 1
    optional :max_rows, :uint64, 2
  end
  add_message "tabletmanagerdata.ExecuteFetchAsAppResponse" do
    optional :result, :message, 1, "query.QueryResult"
  end
  add_message "tabletmanagerdata.SlaveStatusRequest" do
  end
  add_message "tabletmanagerdata.SlaveStatusResponse" do
    optional :status, :message, 1, "replicationdata.Status"
  end
  add_message "tabletmanagerdata.MasterPositionRequest" do
  end
  add_message "tabletmanagerdata.MasterPositionResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.StopSlaveRequest" do
  end
  add_message "tabletmanagerdata.StopSlaveResponse" do
  end
  add_message "tabletmanagerdata.StopSlaveMinimumRequest" do
    optional :position, :string, 1
    optional :wait_timeout, :int64, 2
  end
  add_message "tabletmanagerdata.StopSlaveMinimumResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.StartSlaveRequest" do
  end
  add_message "tabletmanagerdata.StartSlaveResponse" do
  end
  add_message "tabletmanagerdata.TabletExternallyReparentedRequest" do
    optional :external_id, :string, 1
  end
  add_message "tabletmanagerdata.TabletExternallyReparentedResponse" do
  end
  add_message "tabletmanagerdata.TabletExternallyElectedRequest" do
  end
  add_message "tabletmanagerdata.TabletExternallyElectedResponse" do
  end
  add_message "tabletmanagerdata.GetSlavesRequest" do
  end
  add_message "tabletmanagerdata.GetSlavesResponse" do
    repeated :addrs, :string, 1
  end
  add_message "tabletmanagerdata.WaitBlpPositionRequest" do
    optional :blp_position, :message, 1, "tabletmanagerdata.BlpPosition"
    optional :wait_timeout, :int64, 2
  end
  add_message "tabletmanagerdata.WaitBlpPositionResponse" do
  end
  add_message "tabletmanagerdata.StopBlpRequest" do
  end
  add_message "tabletmanagerdata.StopBlpResponse" do
    repeated :blp_positions, :message, 1, "tabletmanagerdata.BlpPosition"
  end
  add_message "tabletmanagerdata.StartBlpRequest" do
  end
  add_message "tabletmanagerdata.StartBlpResponse" do
  end
  add_message "tabletmanagerdata.RunBlpUntilRequest" do
    repeated :blp_positions, :message, 1, "tabletmanagerdata.BlpPosition"
    optional :wait_timeout, :int64, 2
  end
  add_message "tabletmanagerdata.RunBlpUntilResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.ResetReplicationRequest" do
  end
  add_message "tabletmanagerdata.ResetReplicationResponse" do
  end
  add_message "tabletmanagerdata.InitMasterRequest" do
  end
  add_message "tabletmanagerdata.InitMasterResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.PopulateReparentJournalRequest" do
    optional :time_created_ns, :int64, 1
    optional :action_name, :string, 2
    optional :master_alias, :message, 3, "topodata.TabletAlias"
    optional :replication_position, :string, 4
  end
  add_message "tabletmanagerdata.PopulateReparentJournalResponse" do
  end
  add_message "tabletmanagerdata.InitSlaveRequest" do
    optional :parent, :message, 1, "topodata.TabletAlias"
    optional :replication_position, :string, 2
    optional :time_created_ns, :int64, 3
  end
  add_message "tabletmanagerdata.InitSlaveResponse" do
  end
  add_message "tabletmanagerdata.DemoteMasterRequest" do
  end
  add_message "tabletmanagerdata.DemoteMasterResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.PromoteSlaveWhenCaughtUpRequest" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.PromoteSlaveWhenCaughtUpResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.SlaveWasPromotedRequest" do
  end
  add_message "tabletmanagerdata.SlaveWasPromotedResponse" do
  end
  add_message "tabletmanagerdata.SetMasterRequest" do
    optional :parent, :message, 1, "topodata.TabletAlias"
    optional :time_created_ns, :int64, 2
    optional :force_start_slave, :bool, 3
  end
  add_message "tabletmanagerdata.SetMasterResponse" do
  end
  add_message "tabletmanagerdata.SlaveWasRestartedRequest" do
    optional :parent, :message, 1, "topodata.TabletAlias"
  end
  add_message "tabletmanagerdata.SlaveWasRestartedResponse" do
  end
  add_message "tabletmanagerdata.StopReplicationAndGetStatusRequest" do
  end
  add_message "tabletmanagerdata.StopReplicationAndGetStatusResponse" do
    optional :status, :message, 1, "replicationdata.Status"
  end
  add_message "tabletmanagerdata.PromoteSlaveRequest" do
  end
  add_message "tabletmanagerdata.PromoteSlaveResponse" do
    optional :position, :string, 1
  end
  add_message "tabletmanagerdata.BackupRequest" do
    optional :concurrency, :int64, 1
  end
  add_message "tabletmanagerdata.BackupResponse" do
    optional :event, :message, 1, "logutil.Event"
  end
end

module Tabletmanagerdata
  TableDefinition = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.TableDefinition").msgclass
  SchemaDefinition = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SchemaDefinition").msgclass
  UserPermission = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.UserPermission").msgclass
  DbPermission = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.DbPermission").msgclass
  Permissions = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.Permissions").msgclass
  BlpPosition = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.BlpPosition").msgclass
  PingRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PingRequest").msgclass
  PingResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PingResponse").msgclass
  SleepRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SleepRequest").msgclass
  SleepResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SleepResponse").msgclass
  ExecuteHookRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteHookRequest").msgclass
  ExecuteHookResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteHookResponse").msgclass
  GetSchemaRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetSchemaRequest").msgclass
  GetSchemaResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetSchemaResponse").msgclass
  GetPermissionsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetPermissionsRequest").msgclass
  GetPermissionsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetPermissionsResponse").msgclass
  SetReadOnlyRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetReadOnlyRequest").msgclass
  SetReadOnlyResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetReadOnlyResponse").msgclass
  SetReadWriteRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetReadWriteRequest").msgclass
  SetReadWriteResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetReadWriteResponse").msgclass
  ChangeTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ChangeTypeRequest").msgclass
  ChangeTypeResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ChangeTypeResponse").msgclass
  RefreshStateRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RefreshStateRequest").msgclass
  RefreshStateResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RefreshStateResponse").msgclass
  RunHealthCheckRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RunHealthCheckRequest").msgclass
  RunHealthCheckResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RunHealthCheckResponse").msgclass
  ReloadSchemaRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ReloadSchemaRequest").msgclass
  ReloadSchemaResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ReloadSchemaResponse").msgclass
  PreflightSchemaRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PreflightSchemaRequest").msgclass
  PreflightSchemaResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PreflightSchemaResponse").msgclass
  ApplySchemaRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ApplySchemaRequest").msgclass
  ApplySchemaResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ApplySchemaResponse").msgclass
  ExecuteFetchAsDbaRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteFetchAsDbaRequest").msgclass
  ExecuteFetchAsDbaResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteFetchAsDbaResponse").msgclass
  ExecuteFetchAsAppRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteFetchAsAppRequest").msgclass
  ExecuteFetchAsAppResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ExecuteFetchAsAppResponse").msgclass
  SlaveStatusRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveStatusRequest").msgclass
  SlaveStatusResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveStatusResponse").msgclass
  MasterPositionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.MasterPositionRequest").msgclass
  MasterPositionResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.MasterPositionResponse").msgclass
  StopSlaveRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopSlaveRequest").msgclass
  StopSlaveResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopSlaveResponse").msgclass
  StopSlaveMinimumRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopSlaveMinimumRequest").msgclass
  StopSlaveMinimumResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopSlaveMinimumResponse").msgclass
  StartSlaveRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StartSlaveRequest").msgclass
  StartSlaveResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StartSlaveResponse").msgclass
  TabletExternallyReparentedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.TabletExternallyReparentedRequest").msgclass
  TabletExternallyReparentedResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.TabletExternallyReparentedResponse").msgclass
  TabletExternallyElectedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.TabletExternallyElectedRequest").msgclass
  TabletExternallyElectedResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.TabletExternallyElectedResponse").msgclass
  GetSlavesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetSlavesRequest").msgclass
  GetSlavesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.GetSlavesResponse").msgclass
  WaitBlpPositionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.WaitBlpPositionRequest").msgclass
  WaitBlpPositionResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.WaitBlpPositionResponse").msgclass
  StopBlpRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopBlpRequest").msgclass
  StopBlpResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopBlpResponse").msgclass
  StartBlpRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StartBlpRequest").msgclass
  StartBlpResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StartBlpResponse").msgclass
  RunBlpUntilRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RunBlpUntilRequest").msgclass
  RunBlpUntilResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.RunBlpUntilResponse").msgclass
  ResetReplicationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ResetReplicationRequest").msgclass
  ResetReplicationResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.ResetReplicationResponse").msgclass
  InitMasterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.InitMasterRequest").msgclass
  InitMasterResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.InitMasterResponse").msgclass
  PopulateReparentJournalRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PopulateReparentJournalRequest").msgclass
  PopulateReparentJournalResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PopulateReparentJournalResponse").msgclass
  InitSlaveRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.InitSlaveRequest").msgclass
  InitSlaveResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.InitSlaveResponse").msgclass
  DemoteMasterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.DemoteMasterRequest").msgclass
  DemoteMasterResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.DemoteMasterResponse").msgclass
  PromoteSlaveWhenCaughtUpRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PromoteSlaveWhenCaughtUpRequest").msgclass
  PromoteSlaveWhenCaughtUpResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PromoteSlaveWhenCaughtUpResponse").msgclass
  SlaveWasPromotedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveWasPromotedRequest").msgclass
  SlaveWasPromotedResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveWasPromotedResponse").msgclass
  SetMasterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetMasterRequest").msgclass
  SetMasterResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SetMasterResponse").msgclass
  SlaveWasRestartedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveWasRestartedRequest").msgclass
  SlaveWasRestartedResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.SlaveWasRestartedResponse").msgclass
  StopReplicationAndGetStatusRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopReplicationAndGetStatusRequest").msgclass
  StopReplicationAndGetStatusResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.StopReplicationAndGetStatusResponse").msgclass
  PromoteSlaveRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PromoteSlaveRequest").msgclass
  PromoteSlaveResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.PromoteSlaveResponse").msgclass
  BackupRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.BackupRequest").msgclass
  BackupResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tabletmanagerdata.BackupResponse").msgclass
end
