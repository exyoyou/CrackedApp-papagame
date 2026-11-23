.class public final Lcom/windmill/sdk/models/StrategyWaterFall;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/StrategyWaterFall$ProtoAdapter_StrategyWaterFall;,
        Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/StrategyWaterFall;",
        "Lcom/windmill/sdk/models/StrategyWaterFall$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/StrategyWaterFall;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/StrategyWaterFall;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AB_FLAG:Ljava/lang/Integer;

.field public static final DEFAULT_BIDDING_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_BID_BOTTOM_LINE_SWITCH:Ljava/lang/Boolean;

.field public static final DEFAULT_BID_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_CONCURRENT_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLE_CONCURRENCY:Ljava/lang/Boolean;

.field public static final DEFAULT_EXPERIMENT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_FILL_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

.field public static final DEFAULT_LOAD_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_MAX_CONCURRENT_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_NOTIFY_BID_RESULT_SWITCH:Ljava/lang/Boolean;

.field public static final DEFAULT_PLAYING_AUTO_LOAD:Ljava/lang/Boolean;

.field public static final DEFAULT_REFRESH_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_SUB_EXPERIMENT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_TRAFFIC_WEIGHT:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final ab_flag:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final bid_bottom_line_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xc
    .end annotation
.end field

.field public final bid_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0xa
    .end annotation
.end field

.field public final bidding_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final concurrent_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final element_ids:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final enable_concurrency:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x12
    .end annotation
.end field

.field public final experiment_id:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final fill_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x11
    .end annotation
.end field

.field public final frequency_day:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xe
    .end annotation
.end field

.field public final frequency_hour:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xf
    .end annotation
.end field

.field public final frequency_secs:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x10
    .end annotation
.end field

.field public final load_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x5
    .end annotation
.end field

.field public final max_concurrent_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x13
    .end annotation
.end field

.field public final notify_bid_result_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x14
    .end annotation
.end field

.field public final notify_url:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x15
    .end annotation
.end field

.field public final playing_auto_load:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xb
    .end annotation
.end field

.field public final refresh_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x9
    .end annotation
.end field

.field public final sub_experiment_id:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x8
    .end annotation
.end field

.field public final traffic_weight:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/StrategyWaterFall$ProtoAdapter_StrategyWaterFall;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/StrategyWaterFall$ProtoAdapter_StrategyWaterFall;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_AB_FLAG:Ljava/lang/Integer;

    .line 20
    .line 21
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_TRAFFIC_WEIGHT:Ljava/lang/Integer;

    .line 22
    .line 23
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_CONCURRENT_COUNT:Ljava/lang/Integer;

    .line 24
    .line 25
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_LOAD_TIMEOUT:Ljava/lang/Integer;

    .line 26
    .line 27
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_EXPERIMENT_ID:Ljava/lang/Integer;

    .line 28
    .line 29
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 30
    .line 31
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_SUB_EXPERIMENT_ID:Ljava/lang/Integer;

    .line 32
    .line 33
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_REFRESH_INTERVAL:Ljava/lang/Integer;

    .line 34
    .line 35
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BID_FLOOR:Ljava/lang/Integer;

    .line 36
    .line 37
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    sput-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_PLAYING_AUTO_LOAD:Ljava/lang/Boolean;

    .line 40
    .line 41
    sput-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BID_BOTTOM_LINE_SWITCH:Ljava/lang/Boolean;

    .line 42
    .line 43
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BIDDING_TIMEOUT:Ljava/lang/Integer;

    .line 44
    .line 45
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

    .line 46
    .line 47
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

    .line 48
    .line 49
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

    .line 50
    .line 51
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FILL_TYPE:Ljava/lang/Integer;

    .line 52
    .line 53
    sput-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_ENABLE_CONCURRENCY:Ljava/lang/Boolean;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_MAX_CONCURRENT_COUNT:Ljava/lang/Integer;

    .line 62
    .line 63
    sput-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_NOTIFY_BID_RESULT_SWITCH:Ljava/lang/Boolean;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 23
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
            0x0
        }
        names = {
            "ab_flag",
            "traffic_weight",
            "concurrent_count",
            "element_ids",
            "load_timeout",
            "experiment_id",
            "type",
            "sub_experiment_id",
            "refresh_interval",
            "bid_floor",
            "playing_auto_load",
            "bid_bottom_line_switch",
            "bidding_timeout",
            "frequency_day",
            "frequency_hour",
            "frequency_secs",
            "fill_type",
            "enable_concurrency",
            "max_concurrent_count",
            "notify_bid_result_switch",
            "notify_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
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

    .line 1
    sget-object v22, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    invoke-direct/range {v0 .. v22}, Lcom/windmill/sdk/models/StrategyWaterFall;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V
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
            0x0
        }
        names = {
            "ab_flag",
            "traffic_weight",
            "concurrent_count",
            "element_ids",
            "load_timeout",
            "experiment_id",
            "type",
            "sub_experiment_id",
            "refresh_interval",
            "bid_floor",
            "playing_auto_load",
            "bid_bottom_line_switch",
            "bidding_timeout",
            "frequency_day",
            "frequency_hour",
            "frequency_secs",
            "fill_type",
            "enable_concurrency",
            "max_concurrent_count",
            "notify_bid_result_switch",
            "notify_url",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v2, p22

    invoke-direct {p0, v1, v2}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    const-string v1, "element_ids"

    move-object v2, p4

    .line 6
    invoke-static {v1, p4}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/windmill/sdk/models/StrategyWaterFall;

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
    check-cast p1, Lcom/windmill/sdk/models/StrategyWaterFall;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    .line 148
    .line 149
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_2

    .line 176
    .line 177
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    .line 178
    .line 179
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    .line 198
    .line 199
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    .line 208
    .line 209
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    .line 217
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v3, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 228
    .line 229
    iget-object p1, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_2

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_13

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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x25

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_1
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x25

    .line 41
    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_2
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x25

    .line 54
    .line 55
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x25

    .line 63
    .line 64
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v1, 0x0

    .line 74
    :goto_3
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x25

    .line 76
    .line 77
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/4 v1, 0x0

    .line 87
    :goto_4
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x25

    .line 89
    .line 90
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    const/4 v1, 0x0

    .line 100
    :goto_5
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x25

    .line 102
    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    const/4 v1, 0x0

    .line 113
    :goto_6
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x25

    .line 115
    .line 116
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto :goto_7

    .line 125
    :cond_7
    const/4 v1, 0x0

    .line 126
    :goto_7
    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x25

    .line 128
    .line 129
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    goto :goto_8

    .line 138
    :cond_8
    const/4 v1, 0x0

    .line 139
    :goto_8
    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x25

    .line 141
    .line 142
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    goto :goto_9

    .line 151
    :cond_9
    const/4 v1, 0x0

    .line 152
    :goto_9
    add-int/2addr v0, v1

    .line 153
    mul-int/lit8 v0, v0, 0x25

    .line 154
    .line 155
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 156
    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    goto :goto_a

    .line 164
    :cond_a
    const/4 v1, 0x0

    .line 165
    :goto_a
    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x25

    .line 167
    .line 168
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    .line 169
    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    goto :goto_b

    .line 177
    :cond_b
    const/4 v1, 0x0

    .line 178
    :goto_b
    add-int/2addr v0, v1

    .line 179
    mul-int/lit8 v0, v0, 0x25

    .line 180
    .line 181
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    .line 182
    .line 183
    if-eqz v1, :cond_c

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    goto :goto_c

    .line 190
    :cond_c
    const/4 v1, 0x0

    .line 191
    :goto_c
    add-int/2addr v0, v1

    .line 192
    mul-int/lit8 v0, v0, 0x25

    .line 193
    .line 194
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    .line 195
    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    goto :goto_d

    .line 203
    :cond_d
    const/4 v1, 0x0

    .line 204
    :goto_d
    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x25

    .line 206
    .line 207
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    .line 208
    .line 209
    if-eqz v1, :cond_e

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    goto :goto_e

    .line 216
    :cond_e
    const/4 v1, 0x0

    .line 217
    :goto_e
    add-int/2addr v0, v1

    .line 218
    mul-int/lit8 v0, v0, 0x25

    .line 219
    .line 220
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    .line 221
    .line 222
    if-eqz v1, :cond_f

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    goto :goto_f

    .line 229
    :cond_f
    const/4 v1, 0x0

    .line 230
    :goto_f
    add-int/2addr v0, v1

    .line 231
    mul-int/lit8 v0, v0, 0x25

    .line 232
    .line 233
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    .line 234
    .line 235
    if-eqz v1, :cond_10

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    goto :goto_10

    .line 242
    :cond_10
    const/4 v1, 0x0

    .line 243
    :goto_10
    add-int/2addr v0, v1

    .line 244
    mul-int/lit8 v0, v0, 0x25

    .line 245
    .line 246
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    .line 247
    .line 248
    if-eqz v1, :cond_11

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    goto :goto_11

    .line 255
    :cond_11
    const/4 v1, 0x0

    .line 256
    :goto_11
    add-int/2addr v0, v1

    .line 257
    mul-int/lit8 v0, v0, 0x25

    .line 258
    .line 259
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 260
    .line 261
    if-eqz v1, :cond_12

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    :cond_12
    add-int/2addr v0, v2

    .line 268
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 269
    .line 270
    :cond_13
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/StrategyWaterFall;->newBuilder()Lcom/windmill/sdk/models/StrategyWaterFall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->ab_flag:Ljava/lang/Integer;

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->traffic_weight:Ljava/lang/Integer;

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->concurrent_count:Ljava/lang/Integer;

    const-string v1, "element_ids"

    .line 6
    iget-object v2, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->element_ids:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->load_timeout:Ljava/lang/Integer;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->experiment_id:Ljava/lang/Integer;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->type:Ljava/lang/Integer;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->sub_experiment_id:Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->refresh_interval:Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_floor:Ljava/lang/Integer;

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->playing_auto_load:Ljava/lang/Boolean;

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bidding_timeout:Ljava/lang/Integer;

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_day:Ljava/lang/Integer;

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->fill_type:Ljava/lang/Integer;

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->enable_concurrency:Ljava/lang/Boolean;

    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->max_concurrent_count:Ljava/lang/Integer;

    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_url:Ljava/lang/String;

    .line 24
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
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ", ab_flag="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, ", traffic_weight="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, ", concurrent_count="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    const-string v1, ", element_ids="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const-string v1, ", load_timeout="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    const-string v1, ", experiment_id="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const-string v1, ", type="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    const-string v1, ", sub_experiment_id="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    const-string v1, ", refresh_interval="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    const-string v1, ", bid_floor="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_floor:Ljava/lang/Integer;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    .line 151
    .line 152
    if-eqz v1, :cond_a

    .line 153
    .line 154
    const-string v1, ", playing_auto_load="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 165
    .line 166
    if-eqz v1, :cond_b

    .line 167
    .line 168
    const-string v1, ", bid_bottom_line_switch="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_b
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    .line 179
    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    const-string v1, ", bidding_timeout="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_c
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    .line 193
    .line 194
    if-eqz v1, :cond_d

    .line 195
    .line 196
    const-string v1, ", frequency_day="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    :cond_d
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    .line 207
    .line 208
    if-eqz v1, :cond_e

    .line 209
    .line 210
    const-string v1, ", frequency_hour="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_e
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    .line 221
    .line 222
    if-eqz v1, :cond_f

    .line 223
    .line 224
    const-string v1, ", frequency_secs="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :cond_f
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    .line 235
    .line 236
    if-eqz v1, :cond_10

    .line 237
    .line 238
    const-string v1, ", fill_type="

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    :cond_10
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    .line 249
    .line 250
    if-eqz v1, :cond_11

    .line 251
    .line 252
    const-string v1, ", enable_concurrency="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :cond_11
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    .line 263
    .line 264
    if-eqz v1, :cond_12

    .line 265
    .line 266
    const-string v1, ", max_concurrent_count="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    :cond_12
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 277
    .line 278
    if-eqz v1, :cond_13

    .line 279
    .line 280
    const-string v1, ", notify_bid_result_switch="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    :cond_13
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v1, :cond_14

    .line 293
    .line 294
    const-string v1, ", notify_url="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_14
    const/4 v1, 0x2

    .line 305
    const-string v2, "StrategyWaterFall{"

    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const/16 v1, 0x7d

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0
.end method
