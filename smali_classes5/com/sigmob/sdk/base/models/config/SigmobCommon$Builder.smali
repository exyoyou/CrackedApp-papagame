.class public final Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommon;",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

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

.field public disable_srm:Ljava/lang/Boolean;

.field public disable_up_location:Ljava/lang/Boolean;

.field public enable_active_expire:Ljava/lang/Boolean;

.field public enable_debug_level:Ljava/lang/Boolean;

.field public enable_extra_dclog:Ljava/lang/Boolean;

.field public endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

.field public expire_monitor_interval:Ljava/lang/Integer;

.field public feedback_debug:Ljava/lang/Boolean;

.field public ipv6_interval:Ljava/lang/Integer;

.field public is_gdpr_region:Ljava/lang/Boolean;

.field public load_interval:Ljava/lang/Integer;

.field public log_enc:Ljava/lang/Boolean;

.field public max_send_log_records:Ljava/lang/Integer;

.field public native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

.field public network_timeout:Ljava/lang/Integer;

.field public noncompliance_mark:Ljava/lang/Boolean;

.field public preload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
            ">;"
        }
    .end annotation
.end field

.field public preload_url:Ljava/lang/String;

.field public rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

.field public send_log_interval:Ljava/lang/Integer;

.field public sniffing_type:Ljava/lang/Integer;

.field public splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

.field public tracking_expiration_time:Ljava/lang/Integer;

.field public tracking_retry_interval:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->max_send_log_records:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->send_log_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->load_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_LOG_ENC:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->log_enc:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_FEEDBACK_DEBUG:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->feedback_debug:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_EXTRA_DCLOG:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_extra_dclog:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_NETWORK_TIMEOUT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->network_timeout:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_NONCOMPLIANCE_MARK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_EXPIRE_MONITOR_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->expire_monitor_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_ACTIVE_EXPIRE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_active_expire:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_SNIFFING_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->sniffing_type:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload_url:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_DISABLE_SRM:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_srm:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_IPV6_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->ipv6_interval:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->dclog_blacklist:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public anti_fraud_log(Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anti_fraud_log"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobCommon;
    .locals 32

    .line 2
    move-object/from16 v0, p0

    new-instance v30, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->send_log_interval:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->dclog_blacklist:Ljava/util/List;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->load_interval:Ljava/lang/Integer;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->log_enc:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->feedback_debug:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_extra_dclog:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->network_timeout:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->expire_monitor_interval:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_active_expire:Ljava/lang/Boolean;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->sniffing_type:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload_url:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_srm:Ljava/lang/Boolean;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->ipv6_interval:Ljava/lang/Integer;

    move-object/from16 v28, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v29

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v29}, Lcom/sigmob/sdk/base/models/config/SigmobCommon;-><init>(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v30
.end method

.method public configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configRefresh"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh:Ljava/lang/Integer;

    return-object p0
.end method

.method public dclog_blacklist(Ljava/util/List;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
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
            "Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->dclog_blacklist:Ljava/util/List;

    return-object p0
.end method

.method public disable_srm(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_srm"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_srm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_up_location"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_active_expire(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_active_expire"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_active_expire:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_debug_level(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_debug_level"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_extra_dclog(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_extra_dclog"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_extra_dclog:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endpoints(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpoints"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    return-object p0
.end method

.method public expire_monitor_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expire_monitor_interval"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->expire_monitor_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public feedback_debug(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feedback_debug"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->feedback_debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ipv6_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipv6_interval"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->ipv6_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_gdpr_region"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    return-object p0
.end method

.method public load_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_interval"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->load_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public log_enc(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log_enc"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->log_enc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_send_log_records"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->max_send_log_records:Ljava/lang/Integer;

    return-object p0
.end method

.method public native_config(Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "native_config"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    return-object p0
.end method

.method public network_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network_timeout"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->network_timeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public noncompliance_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noncompliance_mark"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    return-object p0
.end method

.method public preload(Ljava/util/List;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preload"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    return-object p0
.end method

.method public preload_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preload_url"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload_url:Ljava/lang/String;

    return-object p0
.end method

.method public rv_config(Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rv_config"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    return-object p0
.end method

.method public send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "send_log_interval"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->send_log_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public sniffing_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sniffing_type"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->sniffing_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public splash_config(Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splash_config"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    return-object p0
.end method

.method public tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_expiration_time"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_retry_interval"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    return-object p0
.end method
