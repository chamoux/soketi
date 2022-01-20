CREATE TABLE IF NOT EXISTS apps (
    id varchar(255) PRIMARY KEY,
    "key" varchar(255) NOT NULL,
    secret varchar(255) NOT NULL,
    max_connections integer NOT NULL,
    enable_client_messages smallint NOT NULL,
    "enabled" smallint NOT NULL,
    max_backend_events_per_sec integer NOT NULL,
    max_client_events_per_sec integer NOT NULL,
    max_read_req_per_sec integer NOT NULL,
    webhooks json,
    max_backend_events_per_sec tinyint(1) NULL,
    max_presence_member_size_in_kb tinyint(1) NULL,
    max_channel_name_length tinyint(1) NULL,
    max_event_channels_at_once tinyint(1) NULL,
    max_event_name_length tinyint(1) NULL,
    max_event_payload_in_kb tinyint(1) NULL,
    max_event_batch_size tinyint(1) NULL
);

INSERT INTO apps (
    id,
    "key",
    secret,
    max_connections,
    "enabled",
    enable_client_messages,
    max_backend_events_per_sec,
    max_client_events_per_sec,
    max_read_req_per_sec,
    webhooks
) VALUES (
    'app-id',
    'app-key',
    'app-secret',
    200,
    1,
    1,
    -1,
    -1,
    -1,
    '[]',
    null,
    null,
    null,
    null,
    null,
    null,
    null
);
