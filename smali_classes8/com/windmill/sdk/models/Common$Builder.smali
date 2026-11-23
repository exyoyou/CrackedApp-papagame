.class public final Lcom/windmill/sdk/models/Common$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/Common;",
        "Lcom/windmill/sdk/models/Common$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public configRefresh:Ljava/lang/Integer;

.field public dclog_blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public disable_up_location:Ljava/lang/Boolean;

.field public enable_debug_level:Ljava/lang/Boolean;

.field public endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

.field public is_gdpr_region:Ljava/lang/Boolean;

.field public load_interval:Ljava/lang/Integer;

.field public log_enc:Ljava/lang/Boolean;

.field public max_send_log_records:Ljava/lang/Integer;

.field public ready_expire_timestamp:Ljava/lang/Integer;

.field public send_log_interval:Ljava/lang/Integer;

.field public tracking_expiration_time:Ljava/lang/Integer;

.field public tracking_retry_interval:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->configRefresh:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->max_send_log_records:Ljava/lang/Integer;

    .line 15
    .line 16
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->send_log_interval:Ljava/lang/Integer;

    .line 19
    .line 20
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->enable_debug_level:Ljava/lang/Boolean;

    .line 23
    .line 24
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_READY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 27
    .line 28
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->load_interval:Ljava/lang/Integer;

    .line 31
    .line 32
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->disable_up_location:Ljava/lang/Boolean;

    .line 35
    .line 36
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_LOG_ENC:Ljava/lang/Boolean;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->log_enc:Ljava/lang/Boolean;

    .line 39
    .line 40
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    .line 43
    .line 44
    sget-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/windmill/sdk/models/Common$Builder;->dclog_blacklist:Ljava/util/List;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Common$Builder;->build()Lcom/windmill/sdk/models/Common;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/Common;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    new-instance v16, Lcom/windmill/sdk/models/Common;

    iget-object v2, v0, Lcom/windmill/sdk/models/Common$Builder;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    iget-object v3, v0, Lcom/windmill/sdk/models/Common$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/windmill/sdk/models/Common$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/windmill/sdk/models/Common$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/windmill/sdk/models/Common$Builder;->send_log_interval:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/windmill/sdk/models/Common$Builder;->dclog_blacklist:Ljava/util/List;

    iget-object v8, v0, Lcom/windmill/sdk/models/Common$Builder;->enable_debug_level:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/windmill/sdk/models/Common$Builder;->ready_expire_timestamp:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/windmill/sdk/models/Common$Builder;->load_interval:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/windmill/sdk/models/Common$Builder;->disable_up_location:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/windmill/sdk/models/Common$Builder;->log_enc:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/windmill/sdk/models/Common$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/windmill/sdk/models/Common$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v15

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/windmill/sdk/models/Common;-><init>(Lcom/windmill/sdk/models/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v16
.end method

.method public configRefresh(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configRefresh"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->configRefresh:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public dclog_blacklist(Ljava/util/List;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dclog_blacklist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/windmill/sdk/models/Common$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->dclog_blacklist:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public disable_up_location(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_up_location"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->disable_up_location:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_debug_level(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_debug_level"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->enable_debug_level:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public endpoints(Lcom/windmill/sdk/models/CommonEndpointsConfig;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpoints"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_gdpr_region(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_gdpr_region"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public load_interval(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_interval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->load_interval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public log_enc(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log_enc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->log_enc:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public max_send_log_records(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_send_log_records"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->max_send_log_records:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public ready_expire_timestamp(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ready_expire_timestamp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public send_log_interval(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "send_log_interval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->send_log_interval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public tracking_expiration_time(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_expiration_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public tracking_retry_interval(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_retry_interval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Common$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
