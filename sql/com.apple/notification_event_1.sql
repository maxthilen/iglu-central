-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2018-03-19 13:10

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_apple_notification_event_1 (
    "schema_vendor"                                   VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"                                     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"                                   VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"                                  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"                                         CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"                                     TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"                                        VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                                        VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"                                      VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "action"                                          VARCHAR(100)  ENCODE LZO       NOT NULL,
    "category_identifier"                             VARCHAR(100)  ENCODE LZO       NOT NULL,
    "delivery_date"                                   VARCHAR(100)  ENCODE LZO       NOT NULL,
    "notification.body"                               VARCHAR(1000) ENCODE LZO       NOT NULL,
    "notification.title"                              VARCHAR(300)  ENCODE LZO       NOT NULL,
    "notification.user_info.aps.alert.body"           VARCHAR(1000) ENCODE LZO       NOT NULL,
    "notification.user_info.aps.alert.title"          VARCHAR(300)  ENCODE LZO       NOT NULL,
    "thread_identifier"                               VARCHAR(100)  ENCODE LZO       NOT NULL,
    "trigger"                                         VARCHAR(13)   ENCODE LZO       NOT NULL,
    "notification.attachments"                        VARCHAR(5000) ENCODE LZO,
    "notification.badge"                              BIGINT        ENCODE LZO,
    "notification.launch_image_name"                  VARCHAR(300)  ENCODE LZO,
    "notification.sound"                              VARCHAR(300)  ENCODE LZO,
    "notification.subtitle"                           VARCHAR(300)  ENCODE LZO,
    "notification.user_info.aps.alert.action_loc_key" VARCHAR(100)  ENCODE LZO,
    "notification.user_info.aps.alert.launch_image"   VARCHAR(300)  ENCODE LZO,
    "notification.user_info.aps.alert.loc_args"       VARCHAR(5000) ENCODE LZO,
    "notification.user_info.aps.alert.loc_key"        VARCHAR(100)  ENCODE LZO,
    "notification.user_info.aps.alert.title_loc_args" VARCHAR(5000) ENCODE LZO,
    "notification.user_info.aps.alert.title_loc_key"  VARCHAR(100)  ENCODE LZO,
    "notification.user_info.aps.badge"                BIGINT        ENCODE LZO,
    "notification.user_info.aps.category"             VARCHAR(100)  ENCODE LZO,
    "notification.user_info.aps.content_available"    BOOLEAN       ENCODE RUNLENGTH,
    "notification.user_info.aps.sound"                VARCHAR(300)  ENCODE LZO,
    "notification.user_info.aps.thread_id"            VARCHAR(100)  ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_apple_notification_event_1 IS 'iglu:com.apple/notification_event/jsonschema/1-0-0';
