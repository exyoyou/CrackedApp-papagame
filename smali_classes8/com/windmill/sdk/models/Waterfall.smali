.class public final Lcom/windmill/sdk/models/Waterfall;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;,
        Lcom/windmill/sdk/models/Waterfall$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/Waterfall;",
        "Lcom/windmill/sdk/models/Waterfall$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/Waterfall;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/Waterfall;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CHECK_MASK:Ljava/lang/Integer;

.field public static final DEFAULT_CLIENT_BIDDING_SWITCH:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_AB_TEST:Ljava/lang/Boolean;

.field public static final DEFAULT_FORBIDPLUGINUPDATE:Ljava/lang/Boolean;

.field public static final DEFAULT_INCENTIVE_ABNORMAL_SHUTDOWN:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_ENABLE_TRACKING_READY_LOG:Ljava/lang/Boolean;

.field public static final DEFAULT_M:Ljava/lang/String; = ""

.field public static final DEFAULT_MABC_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_PRIVACY_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_RULE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_RV_CALLBACK_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_STRATEGY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_STRATEGY_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_STRATEGY_REALTIME_REFRESH:Ljava/lang/Boolean;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;

.field public static final DEFAULT_TIME_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_USEMEDIATION:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final apps:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.MediationApp#ADAPTER"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationApp;",
            ">;"
        }
    .end annotation
.end field

.field public final channels:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.MediationChannel#ADAPTER"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public final check_mask:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x17
    .end annotation
.end field

.field public final client_bidding_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x12
    .end annotation
.end field

.field public final currency_setting:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final custom_setting:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final elements:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.MediationElement#ADAPTER"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;"
        }
    .end annotation
.end field

.field public final enable_ab_test:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final forbidPluginUpdate:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x10
    .end annotation
.end field

.field public final incentive_abnormal_shutdown:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1a
    .end annotation
.end field

.field public final is_enable_tracking_ready_log:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1b
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x19
    .end annotation
.end field

.field public final mabc_url:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x18
    .end annotation
.end field

.field public final mt_channel:Lcom/windmill/sdk/models/MtElementInfo;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.MtElementInfo#ADAPTER"
        tag = 0x1c
    .end annotation
.end field

.field public final privacy_url:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xd
    .end annotation
.end field

.field public final rule_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final rv_callback_url:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final single_channel_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final ssp_options:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final strategy_expire_timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final strategy_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final strategy_realtime_refresh:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.StrategyWaterFall#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final template_setting:Lcom/windmill/sdk/models/TemplateSetting;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.TemplateSetting#ADAPTER"
        tag = 0xc
    .end annotation
.end field

.field public final time_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x14
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0x16
    .end annotation
.end field

.field public final track_url:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final useMediation:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_ENABLE_AB_TEST:Ljava/lang/Boolean;

    .line 24
    .line 25
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_STRATEGY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

    .line 26
    .line 27
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_USEMEDIATION:Ljava/lang/Boolean;

    .line 28
    .line 29
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_FORBIDPLUGINUPDATE:Ljava/lang/Boolean;

    .line 30
    .line 31
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_STRATEGY_REALTIME_REFRESH:Ljava/lang/Boolean;

    .line 32
    .line 33
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_CLIENT_BIDDING_SWITCH:Ljava/lang/Boolean;

    .line 34
    .line 35
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_TIME_TYPE:Ljava/lang/Integer;

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sput-object v2, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    .line 44
    .line 45
    sput-object v0, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_CHECK_MASK:Ljava/lang/Integer;

    .line 46
    .line 47
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_INCENTIVE_ABNORMAL_SHUTDOWN:Ljava/lang/Boolean;

    .line 48
    .line 49
    sput-object v1, Lcom/windmill/sdk/models/Waterfall;->DEFAULT_IS_ENABLE_TRACKING_READY_LOG:Ljava/lang/Boolean;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Lcom/windmill/sdk/models/StrategyWaterFall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/windmill/sdk/models/TemplateSetting;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/windmill/sdk/models/MtElementInfo;)V
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "apps",
            "single_channel_timeout",
            "channels",
            "enable_ab_test",
            "strategy_waterfall",
            "strategy_id",
            "rule_id",
            "rv_callback_url",
            "strategy_expire_timestamp",
            "track_url",
            "template_setting",
            "privacy_url",
            "useMediation",
            "ssp_options",
            "forbidPluginUpdate",
            "strategy_realtime_refresh",
            "client_bidding_switch",
            "currency_setting",
            "time_type",
            "custom_setting",
            "timestamp",
            "check_mask",
            "mabc_url",
            "m",
            "incentive_abnormal_shutdown",
            "is_enable_tracking_ready_log",
            "mt_channel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationApp;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/windmill/sdk/models/StrategyWaterFall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/windmill/sdk/models/TemplateSetting;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/windmill/sdk/models/MtElementInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    .line 1
    sget-object v29, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    invoke-direct/range {v0 .. v29}, Lcom/windmill/sdk/models/Waterfall;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Lcom/windmill/sdk/models/StrategyWaterFall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/windmill/sdk/models/TemplateSetting;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/windmill/sdk/models/MtElementInfo;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Lcom/windmill/sdk/models/StrategyWaterFall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/windmill/sdk/models/TemplateSetting;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/windmill/sdk/models/MtElementInfo;Lcom/czhj/wire/okio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "apps",
            "single_channel_timeout",
            "channels",
            "enable_ab_test",
            "strategy_waterfall",
            "strategy_id",
            "rule_id",
            "rv_callback_url",
            "strategy_expire_timestamp",
            "track_url",
            "template_setting",
            "privacy_url",
            "useMediation",
            "ssp_options",
            "forbidPluginUpdate",
            "strategy_realtime_refresh",
            "client_bidding_switch",
            "currency_setting",
            "time_type",
            "custom_setting",
            "timestamp",
            "check_mask",
            "mabc_url",
            "m",
            "incentive_abnormal_shutdown",
            "is_enable_tracking_ready_log",
            "mt_channel",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationApp;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/windmill/sdk/models/StrategyWaterFall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/windmill/sdk/models/TemplateSetting;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/windmill/sdk/models/MtElementInfo;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v2, p29

    invoke-direct {p0, v1, v2}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    const-string v1, "elements"

    move-object v2, p1

    .line 3
    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    const-string v1, "apps"

    move-object v2, p2

    .line 4
    invoke-static {v1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    const-string v1, "channels"

    move-object v2, p4

    .line 6
    invoke-static {v1, p4}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    const-string v1, "track_url"

    move-object v2, p11

    .line 13
    invoke-static {v1, p11}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    const-string v1, "ssp_options"

    move-object/from16 v2, p15

    .line 17
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    const-string v1, "currency_setting"

    move-object/from16 v2, p19

    .line 21
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    const-string v1, "custom_setting"

    move-object/from16 v2, p21

    .line 23
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 28
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    move-object/from16 v1, p27

    .line 29
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    move-object/from16 v1, p28

    .line 30
    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/windmill/sdk/models/Waterfall;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/windmill/sdk/models/Waterfall;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    .line 157
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    .line 167
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 170
    .line 171
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_2

    .line 176
    .line 177
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 178
    .line 179
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_2

    .line 196
    .line 197
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 198
    .line 199
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_2

    .line 206
    .line 207
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 208
    .line 209
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 210
    .line 211
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    .line 217
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 218
    .line 219
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 220
    .line 221
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_2

    .line 226
    .line 227
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 228
    .line 229
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 230
    .line 231
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_2

    .line 236
    .line 237
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 238
    .line 239
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 240
    .line 241
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_2

    .line 246
    .line 247
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 248
    .line 249
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_2

    .line 256
    .line 257
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_2

    .line 266
    .line 267
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_2

    .line 276
    .line 277
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_2

    .line 286
    .line 287
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 288
    .line 289
    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_2

    .line 296
    .line 297
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 298
    .line 299
    iget-object p1, p1, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 300
    .line 301
    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_2

    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_15

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    mul-int/lit8 v0, v0, 0x25

    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x25

    .line 23
    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x25

    .line 32
    .line 33
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x25

    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x25

    .line 55
    .line 56
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_1
    add-int/2addr v0, v1

    .line 67
    mul-int/lit8 v0, v0, 0x25

    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/windmill/sdk/models/StrategyWaterFall;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_2
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x25

    .line 81
    .line 82
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v1, 0x0

    .line 92
    :goto_3
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x25

    .line 94
    .line 95
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    const/4 v1, 0x0

    .line 105
    :goto_4
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x25

    .line 107
    .line 108
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    const/4 v1, 0x0

    .line 118
    :goto_5
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x25

    .line 120
    .line 121
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    goto :goto_6

    .line 130
    :cond_6
    const/4 v1, 0x0

    .line 131
    :goto_6
    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x25

    .line 133
    .line 134
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x25

    .line 142
    .line 143
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/windmill/sdk/models/TemplateSetting;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    goto :goto_7

    .line 152
    :cond_7
    const/4 v1, 0x0

    .line 153
    :goto_7
    add-int/2addr v0, v1

    .line 154
    mul-int/lit8 v0, v0, 0x25

    .line 155
    .line 156
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    goto :goto_8

    .line 165
    :cond_8
    const/4 v1, 0x0

    .line 166
    :goto_8
    add-int/2addr v0, v1

    .line 167
    mul-int/lit8 v0, v0, 0x25

    .line 168
    .line 169
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 170
    .line 171
    if-eqz v1, :cond_9

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    goto :goto_9

    .line 178
    :cond_9
    const/4 v1, 0x0

    .line 179
    :goto_9
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x25

    .line 181
    .line 182
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x25

    .line 190
    .line 191
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 192
    .line 193
    if-eqz v1, :cond_a

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    goto :goto_a

    .line 200
    :cond_a
    const/4 v1, 0x0

    .line 201
    :goto_a
    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x25

    .line 203
    .line 204
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 205
    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    goto :goto_b

    .line 213
    :cond_b
    const/4 v1, 0x0

    .line 214
    :goto_b
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x25

    .line 216
    .line 217
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 218
    .line 219
    if-eqz v1, :cond_c

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    goto :goto_c

    .line 226
    :cond_c
    const/4 v1, 0x0

    .line 227
    :goto_c
    add-int/2addr v0, v1

    .line 228
    mul-int/lit8 v0, v0, 0x25

    .line 229
    .line 230
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 231
    .line 232
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    add-int/2addr v0, v1

    .line 237
    mul-int/lit8 v0, v0, 0x25

    .line 238
    .line 239
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 240
    .line 241
    if-eqz v1, :cond_d

    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    goto :goto_d

    .line 248
    :cond_d
    const/4 v1, 0x0

    .line 249
    :goto_d
    add-int/2addr v0, v1

    .line 250
    mul-int/lit8 v0, v0, 0x25

    .line 251
    .line 252
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    add-int/2addr v0, v1

    .line 259
    mul-int/lit8 v0, v0, 0x25

    .line 260
    .line 261
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 262
    .line 263
    if-eqz v1, :cond_e

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    goto :goto_e

    .line 270
    :cond_e
    const/4 v1, 0x0

    .line 271
    :goto_e
    add-int/2addr v0, v1

    .line 272
    mul-int/lit8 v0, v0, 0x25

    .line 273
    .line 274
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 275
    .line 276
    if-eqz v1, :cond_f

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    goto :goto_f

    .line 283
    :cond_f
    const/4 v1, 0x0

    .line 284
    :goto_f
    add-int/2addr v0, v1

    .line 285
    mul-int/lit8 v0, v0, 0x25

    .line 286
    .line 287
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 288
    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    goto :goto_10

    .line 296
    :cond_10
    const/4 v1, 0x0

    .line 297
    :goto_10
    add-int/2addr v0, v1

    .line 298
    mul-int/lit8 v0, v0, 0x25

    .line 299
    .line 300
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 301
    .line 302
    if-eqz v1, :cond_11

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    goto :goto_11

    .line 309
    :cond_11
    const/4 v1, 0x0

    .line 310
    :goto_11
    add-int/2addr v0, v1

    .line 311
    mul-int/lit8 v0, v0, 0x25

    .line 312
    .line 313
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 314
    .line 315
    if-eqz v1, :cond_12

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    goto :goto_12

    .line 322
    :cond_12
    const/4 v1, 0x0

    .line 323
    :goto_12
    add-int/2addr v0, v1

    .line 324
    mul-int/lit8 v0, v0, 0x25

    .line 325
    .line 326
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 327
    .line 328
    if-eqz v1, :cond_13

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    goto :goto_13

    .line 335
    :cond_13
    const/4 v1, 0x0

    .line 336
    :goto_13
    add-int/2addr v0, v1

    .line 337
    mul-int/lit8 v0, v0, 0x25

    .line 338
    .line 339
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 340
    .line 341
    if-eqz v1, :cond_14

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/windmill/sdk/models/MtElementInfo;->hashCode()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    :cond_14
    add-int/2addr v0, v2

    .line 348
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 349
    .line 350
    :cond_15
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Waterfall;->newBuilder()Lcom/windmill/sdk/models/Waterfall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/Waterfall$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/Waterfall$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/Waterfall$Builder;-><init>()V

    const-string v1, "elements"

    .line 3
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    const-string v1, "apps"

    .line 4
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->single_channel_timeout:Ljava/lang/Integer;

    const-string v1, "channels"

    .line 6
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->enable_ab_test:Ljava/lang/Boolean;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_id:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->rule_id:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->rv_callback_url:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_expire_timestamp:Ljava/lang/Integer;

    const-string v1, "track_url"

    .line 13
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->track_url:Ljava/util/List;

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->privacy_url:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->useMediation:Ljava/lang/Boolean;

    const-string v1, "ssp_options"

    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->ssp_options:Ljava/util/Map;

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->client_bidding_switch:Ljava/lang/Boolean;

    const-string v1, "currency_setting"

    .line 21
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->currency_setting:Ljava/util/Map;

    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->time_type:Ljava/lang/Integer;

    const-string v1, "custom_setting"

    .line 23
    iget-object v2, p0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->custom_setting:Ljava/util/Map;

    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->timestamp:Ljava/lang/Long;

    .line 25
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->check_mask:Ljava/lang/Integer;

    .line 26
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->mabc_url:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->m:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 30
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    iput-object v1, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 31
    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, ", elements="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v1, ", apps="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v1, ", single_channel_timeout="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    const-string v1, ", channels="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const-string v1, ", enable_ab_test="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    const-string v1, ", strategy_waterfall="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    const-string v1, ", strategy_id="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    const-string v1, ", rule_id="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    const-string v1, ", rv_callback_url="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    const-string v1, ", strategy_expire_timestamp="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_a

    .line 165
    .line 166
    const-string v1, ", track_url="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 177
    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    const-string v1, ", template_setting="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_b
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 191
    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    const-string v1, ", privacy_url="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_c
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 205
    .line 206
    if-eqz v1, :cond_d

    .line 207
    .line 208
    const-string v1, ", useMediation="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    :cond_d
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 219
    .line 220
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_e

    .line 225
    .line 226
    const-string v1, ", ssp_options="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_e
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 237
    .line 238
    if-eqz v1, :cond_f

    .line 239
    .line 240
    const-string v1, ", forbidPluginUpdate="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    :cond_f
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 251
    .line 252
    if-eqz v1, :cond_10

    .line 253
    .line 254
    const-string v1, ", strategy_realtime_refresh="

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    :cond_10
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 265
    .line 266
    if-eqz v1, :cond_11

    .line 267
    .line 268
    const-string v1, ", client_bidding_switch="

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    :cond_11
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 279
    .line 280
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_12

    .line 285
    .line 286
    const-string v1, ", currency_setting="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    :cond_12
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 297
    .line 298
    if-eqz v1, :cond_13

    .line 299
    .line 300
    const-string v1, ", time_type="

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    :cond_13
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 311
    .line 312
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_14

    .line 317
    .line 318
    const-string v1, ", custom_setting="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    :cond_14
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 329
    .line 330
    if-eqz v1, :cond_15

    .line 331
    .line 332
    const-string v1, ", timestamp="

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    :cond_15
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 343
    .line 344
    if-eqz v1, :cond_16

    .line 345
    .line 346
    const-string v1, ", check_mask="

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    :cond_16
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 357
    .line 358
    if-eqz v1, :cond_17

    .line 359
    .line 360
    const-string v1, ", mabc_url="

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    :cond_17
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 371
    .line 372
    if-eqz v1, :cond_18

    .line 373
    .line 374
    const-string v1, ", m="

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    :cond_18
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 385
    .line 386
    if-eqz v1, :cond_19

    .line 387
    .line 388
    const-string v1, ", incentive_abnormal_shutdown="

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    :cond_19
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 399
    .line 400
    if-eqz v1, :cond_1a

    .line 401
    .line 402
    const-string v1, ", is_enable_tracking_ready_log="

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    :cond_1a
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 413
    .line 414
    if-eqz v1, :cond_1b

    .line 415
    .line 416
    const-string v1, ", mt_channel="

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    :cond_1b
    const/4 v1, 0x2

    .line 427
    const-string v2, "Waterfall{"

    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const/16 v1, 0x7d

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    return-object v0
.end method
