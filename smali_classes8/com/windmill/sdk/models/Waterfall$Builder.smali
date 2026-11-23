.class public final Lcom/windmill/sdk/models/Waterfall$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/Waterfall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/Waterfall;",
        "Lcom/windmill/sdk/models/Waterfall$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationApp;",
            ">;"
        }
    .end annotation
.end field

.field public channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public check_mask:Ljava/lang/Integer;

.field public client_bidding_switch:Ljava/lang/Boolean;

.field public currency_setting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public custom_setting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;"
        }
    .end annotation
.end field

.field public enable_ab_test:Ljava/lang/Boolean;

.field public forbidPluginUpdate:Ljava/lang/Boolean;

.field public incentive_abnormal_shutdown:Ljava/lang/Boolean;

.field public is_enable_tracking_ready_log:Ljava/lang/Boolean;

.field public m:Ljava/lang/String;

.field public mabc_url:Ljava/lang/String;

.field public mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

.field public privacy_url:Ljava/lang/String;

.field public rule_id:Ljava/lang/String;

.field public rv_callback_url:Ljava/lang/String;

.field public single_channel_timeout:Ljava/lang/Integer;

.field public ssp_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strategy_expire_timestamp:Ljava/lang/Integer;

.field public strategy_id:Ljava/lang/String;

.field public strategy_realtime_refresh:Ljava/lang/Boolean;

.field public strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

.field public template_setting:Lcom/windmill/sdk/models/TemplateSetting;

.field public time_type:Ljava/lang/Integer;

.field public timestamp:Ljava/lang/Long;

.field public track_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public useMediation:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->single_channel_timeout:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_ENABLE_AB_TEST:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->enable_ab_test:Ljava/lang/Boolean;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_id:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->rule_id:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->rv_callback_url:Ljava/lang/String;

    .line 19
    .line 20
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_STRATEGY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->privacy_url:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_USEMEDIATION:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->useMediation:Ljava/lang/Boolean;

    .line 29
    .line 30
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_FORBIDPLUGINUPDATE:Ljava/lang/Boolean;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 33
    .line 34
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_STRATEGY_REALTIME_REFRESH:Ljava/lang/Boolean;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 37
    .line 38
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_CLIENT_BIDDING_SWITCH:Ljava/lang/Boolean;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->client_bidding_switch:Ljava/lang/Boolean;

    .line 41
    .line 42
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_TIME_TYPE:Ljava/lang/Integer;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->time_type:Ljava/lang/Integer;

    .line 45
    .line 46
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->timestamp:Ljava/lang/Long;

    .line 49
    .line 50
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_CHECK_MASK:Ljava/lang/Integer;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->check_mask:Ljava/lang/Integer;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->mabc_url:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->m:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->track_url:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->ssp_options:Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->currency_setting:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->custom_setting:Ljava/util/Map;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public apps(Ljava/util/List;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationApp;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Waterfall$Builder;->build()Lcom/windmill/sdk/models/Waterfall;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/Waterfall;
    .locals 33

    move-object/from16 v0, p0

    .line 2
    new-instance v31, Lcom/windmill/sdk/models/Waterfall;

    move-object/from16 v1, v31

    iget-object v2, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    iget-object v4, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->single_channel_timeout:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    iget-object v6, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->enable_ab_test:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v8, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_id:Ljava/lang/String;

    iget-object v9, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->rule_id:Ljava/lang/String;

    iget-object v10, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->rv_callback_url:Ljava/lang/String;

    iget-object v11, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_expire_timestamp:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->track_url:Ljava/util/List;

    iget-object v13, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    iget-object v14, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->privacy_url:Ljava/lang/String;

    iget-object v15, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->useMediation:Ljava/lang/Boolean;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->ssp_options:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->forbidPluginUpdate:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_realtime_refresh:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->client_bidding_switch:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->currency_setting:Ljava/util/Map;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->time_type:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->custom_setting:Ljava/util/Map;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->timestamp:Ljava/lang/Long;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->check_mask:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->mabc_url:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->m:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    move-object/from16 v29, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v30

    move-object/from16 v1, v32

    invoke-direct/range {v1 .. v30}, Lcom/windmill/sdk/models/Waterfall;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Lcom/windmill/sdk/models/StrategyWaterFall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/windmill/sdk/models/TemplateSetting;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/windmill/sdk/models/MtElementInfo;Lcom/czhj/wire/okio/ByteString;)V

    return-object v31
.end method

.method public channels(Ljava/util/List;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public check_mask(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check_mask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->check_mask:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public client_bidding_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client_bidding_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->client_bidding_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public currency_setting(Ljava/util/Map;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency_setting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->currency_setting:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public custom_setting(Ljava/util/Map;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "custom_setting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->custom_setting:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public elements(Ljava/util/List;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public enable_ab_test(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_ab_test"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->enable_ab_test:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public forbidPluginUpdate(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forbidPluginUpdate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public incentive_abnormal_shutdown(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incentive_abnormal_shutdown"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_enable_tracking_ready_log(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_enable_tracking_ready_log"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public mabc_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mabc_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->mabc_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public mt_channel(Lcom/windmill/sdk/models/MtElementInfo;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mt_channel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public privacy_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacy_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->privacy_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public rule_id(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rule_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->rule_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public rv_callback_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rv_callback_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->rv_callback_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public single_channel_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_channel_timeout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->single_channel_timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public ssp_options(Ljava/util/Map;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssp_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->ssp_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public strategy_expire_timestamp(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_expire_timestamp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public strategy_id(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public strategy_realtime_refresh(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_realtime_refresh"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public strategy_waterfall(Lcom/windmill/sdk/models/StrategyWaterFall;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_waterfall"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 2
    .line 3
    return-object p0
.end method

.method public template_setting(Lcom/windmill/sdk/models/TemplateSetting;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template_setting"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 2
    .line 3
    return-object p0
.end method

.method public time_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->time_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public timestamp(Ljava/lang/Long;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->timestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public track_url(Ljava/util/List;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/Waterfall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->track_url:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public useMediation(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useMediation"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Waterfall$Builder;->useMediation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method
