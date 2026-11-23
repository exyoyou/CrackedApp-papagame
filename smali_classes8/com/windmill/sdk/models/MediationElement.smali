.class public final Lcom/windmill/sdk/models/MediationElement;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;,
        Lcom/windmill/sdk/models/MediationElement$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/MediationElement;",
        "Lcom/windmill/sdk/models/MediationElement$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/MediationElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BID_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_BID_FLOOR_CUR:Ljava/lang/String; = ""

.field public static final DEFAULT_BID_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_ECPM:Ljava/lang/Integer;

.field public static final DEFAULT_ELEMENT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

.field public static final DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

.field public static final DEFAULT_HB:Ljava/lang/Integer;

.field public static final DEFAULT_IS_PDB:Ljava/lang/Boolean;

.field public static final DEFAULT_MASK:Ljava/lang/String; = ""

.field public static final DEFAULT_MEDIATION_APP_ID:Ljava/lang/Integer;

.field public static final DEFAULT_NO_HB_PRELOAD:Ljava/lang/Integer;

.field public static final DEFAULT_ORDER:Ljava/lang/Integer;

.field public static final DEFAULT_PDB_PRIORITY:Ljava/lang/Integer;

.field public static final DEFAULT_PRICE:Ljava/lang/Integer;

.field public static final DEFAULT_RENDER_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_REWARD_GUIDE_PROMPT:Ljava/lang/String; = ""

.field public static final DEFAULT_REWARD_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_SUB_AD_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_TAG:Ljava/lang/Integer;

.field public static final DEFAULT_WEIGHT_SWITCH:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final ban_pkg_name:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bid_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x10
    .end annotation
.end field

.field public final bid_floor_cur:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x16
    .end annotation
.end field

.field public final bid_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final ecpm:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final element_id:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final frequency_day:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final frequency_hour:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x5
    .end annotation
.end field

.field public final frequency_secs:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final hb:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final hb_response:Lcom/windmill/sdk/models/HBResponse;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.HBResponse#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final is_pdb:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x18
    .end annotation
.end field

.field public final mask:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x15
    .end annotation
.end field

.field public final mediation_app_id:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final no_hb_preload:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x11
    .end annotation
.end field

.field public final options:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
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

.field public final order:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x14
    .end annotation
.end field

.field public final pdb_priority:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x19
    .end annotation
.end field

.field public final price:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final render_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xf
    .end annotation
.end field

.field public final reward_guide_prompt:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1a
    .end annotation
.end field

.field public final reward_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x13
    .end annotation
.end field

.field public final saas_options:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1b
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

.field public final single_channel_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final sub_ad_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x12
    .end annotation
.end field

.field public final tag:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field

.field public final weight_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ELEMENT_ID:Ljava/lang/Integer;

    .line 20
    .line 21
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_MEDIATION_APP_ID:Ljava/lang/Integer;

    .line 22
    .line 23
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

    .line 24
    .line 25
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

    .line 26
    .line 27
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

    .line 28
    .line 29
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ECPM:Ljava/lang/Integer;

    .line 30
    .line 31
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_PRICE:Ljava/lang/Integer;

    .line 32
    .line 33
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_HB:Ljava/lang/Integer;

    .line 34
    .line 35
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_BID_TYPE:Ljava/lang/Integer;

    .line 36
    .line 37
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_TAG:Ljava/lang/Integer;

    .line 38
    .line 39
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    sput-object v1, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_WEIGHT_SWITCH:Ljava/lang/Boolean;

    .line 44
    .line 45
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_RENDER_TYPE:Ljava/lang/Integer;

    .line 46
    .line 47
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_BID_FLOOR:Ljava/lang/Integer;

    .line 48
    .line 49
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_NO_HB_PRELOAD:Ljava/lang/Integer;

    .line 50
    .line 51
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_SUB_AD_TYPE:Ljava/lang/Integer;

    .line 52
    .line 53
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_REWARD_TYPE:Ljava/lang/Integer;

    .line 54
    .line 55
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ORDER:Ljava/lang/Integer;

    .line 56
    .line 57
    sput-object v1, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_IS_PDB:Ljava/lang/Boolean;

    .line 58
    .line 59
    sput-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_PDB_PRIORITY:Ljava/lang/Integer;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/windmill/sdk/models/HBResponse;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 29
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
            0x0
        }
        names = {
            "element_id",
            "mediation_app_id",
            "options",
            "frequency_day",
            "frequency_hour",
            "frequency_secs",
            "ecpm",
            "hb_response",
            "price",
            "hb",
            "bid_type",
            "tag",
            "single_channel_timeout",
            "weight_switch",
            "render_type",
            "bid_floor",
            "no_hb_preload",
            "sub_ad_type",
            "reward_type",
            "order",
            "mask",
            "bid_floor_cur",
            "ban_pkg_name",
            "is_pdb",
            "pdb_priority",
            "reward_guide_prompt",
            "saas_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/models/HBResponse;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
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

    .line 1
    sget-object v28, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    invoke-direct/range {v0 .. v28}, Lcom/windmill/sdk/models/MediationElement;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/windmill/sdk/models/HBResponse;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/windmill/sdk/models/HBResponse;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V
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
            0x0
        }
        names = {
            "element_id",
            "mediation_app_id",
            "options",
            "frequency_day",
            "frequency_hour",
            "frequency_secs",
            "ecpm",
            "hb_response",
            "price",
            "hb",
            "bid_type",
            "tag",
            "single_channel_timeout",
            "weight_switch",
            "render_type",
            "bid_floor",
            "no_hb_preload",
            "sub_ad_type",
            "reward_type",
            "order",
            "mask",
            "bid_floor_cur",
            "ban_pkg_name",
            "is_pdb",
            "pdb_priority",
            "reward_guide_prompt",
            "saas_options",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/models/HBResponse;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v2, p28

    invoke-direct {p0, v1, v2}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    const-string v1, "options"

    move-object v2, p3

    .line 5
    invoke-static {v1, p3}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    const-string v1, "ban_pkg_name"

    move-object/from16 v2, p23

    .line 25
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    move-object/from16 v1, p26

    .line 28
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    const-string v1, "saas_options"

    move-object/from16 v2, p27

    .line 29
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

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
    instance-of v1, p1, Lcom/windmill/sdk/models/MediationElement;

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
    check-cast p1, Lcom/windmill/sdk/models/MediationElement;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    .line 148
    .line 149
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    .line 178
    .line 179
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    .line 198
    .line 199
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    .line 208
    .line 209
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    .line 218
    .line 219
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_2

    .line 236
    .line 237
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    .line 248
    .line 249
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_2

    .line 256
    .line 257
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    .line 258
    .line 259
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    .line 268
    .line 269
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 288
    .line 289
    iget-object p1, p1, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 290
    .line 291
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_2

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_2
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_18

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x25

    .line 50
    .line 51
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    :goto_2
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x25

    .line 63
    .line 64
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/windmill/sdk/models/HBResponse;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    .line 156
    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    .line 182
    .line 183
    if-eqz v1, :cond_c

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    .line 234
    .line 235
    if-eqz v1, :cond_10

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    .line 260
    .line 261
    if-eqz v1, :cond_12

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    goto :goto_12

    .line 268
    :cond_12
    const/4 v1, 0x0

    .line 269
    :goto_12
    add-int/2addr v0, v1

    .line 270
    mul-int/lit8 v0, v0, 0x25

    .line 271
    .line 272
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v1, :cond_13

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    goto :goto_13

    .line 281
    :cond_13
    const/4 v1, 0x0

    .line 282
    :goto_13
    add-int/2addr v0, v1

    .line 283
    mul-int/lit8 v0, v0, 0x25

    .line 284
    .line 285
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    .line 286
    .line 287
    if-eqz v1, :cond_14

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    goto :goto_14

    .line 294
    :cond_14
    const/4 v1, 0x0

    .line 295
    :goto_14
    add-int/2addr v0, v1

    .line 296
    mul-int/lit8 v0, v0, 0x25

    .line 297
    .line 298
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    add-int/2addr v0, v1

    .line 305
    mul-int/lit8 v0, v0, 0x25

    .line 306
    .line 307
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    .line 308
    .line 309
    if-eqz v1, :cond_15

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    goto :goto_15

    .line 316
    :cond_15
    const/4 v1, 0x0

    .line 317
    :goto_15
    add-int/2addr v0, v1

    .line 318
    mul-int/lit8 v0, v0, 0x25

    .line 319
    .line 320
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    .line 321
    .line 322
    if-eqz v1, :cond_16

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    goto :goto_16

    .line 329
    :cond_16
    const/4 v1, 0x0

    .line 330
    :goto_16
    add-int/2addr v0, v1

    .line 331
    mul-int/lit8 v0, v0, 0x25

    .line 332
    .line 333
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    .line 334
    .line 335
    if-eqz v1, :cond_17

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    :cond_17
    add-int/2addr v0, v2

    .line 342
    mul-int/lit8 v0, v0, 0x25

    .line 343
    .line 344
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 345
    .line 346
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    add-int/2addr v0, v1

    .line 351
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 352
    .line 353
    :cond_18
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/MediationElement;->newBuilder()Lcom/windmill/sdk/models/MediationElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/MediationElement$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/MediationElement$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->element_id:Ljava/lang/Integer;

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->mediation_app_id:Ljava/lang/Integer;

    const-string v1, "options"

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->options:Ljava/util/Map;

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_day:Ljava/lang/Integer;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->ecpm:Ljava/lang/Integer;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->price:Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb:Ljava/lang/Integer;

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_type:Ljava/lang/Integer;

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->tag:Ljava/lang/Integer;

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->single_channel_timeout:Ljava/lang/Integer;

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->weight_switch:Ljava/lang/Boolean;

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->render_type:Ljava/lang/Integer;

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor:Ljava/lang/Integer;

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->no_hb_preload:Ljava/lang/Integer;

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->sub_ad_type:Ljava/lang/Integer;

    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_type:Ljava/lang/Integer;

    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->order:Ljava/lang/Integer;

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->mask:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor_cur:Ljava/lang/String;

    const-string v1, "ban_pkg_name"

    .line 25
    iget-object v2, p0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->ban_pkg_name:Ljava/util/List;

    .line 26
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->is_pdb:Ljava/lang/Boolean;

    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->pdb_priority:Ljava/lang/Integer;

    .line 28
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_guide_prompt:Ljava/lang/String;

    const-string v1, "saas_options"

    .line 29
    iget-object v2, p0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->saas_options:Ljava/util/Map;

    .line 30
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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ", element_id="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, ", mediation_app_id="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, ", options="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const-string v1, ", frequency_day="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const-string v1, ", frequency_hour="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    const-string v1, ", frequency_secs="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const-string v1, ", ecpm="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    const-string v1, ", hb_response="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    const-string v1, ", price="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    const-string v1, ", hb="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    .line 151
    .line 152
    if-eqz v1, :cond_a

    .line 153
    .line 154
    const-string v1, ", bid_type="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    .line 165
    .line 166
    if-eqz v1, :cond_b

    .line 167
    .line 168
    const-string v1, ", tag="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_b
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    .line 179
    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    const-string v1, ", single_channel_timeout="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_c
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    .line 193
    .line 194
    if-eqz v1, :cond_d

    .line 195
    .line 196
    const-string v1, ", weight_switch="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    :cond_d
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    .line 207
    .line 208
    if-eqz v1, :cond_e

    .line 209
    .line 210
    const-string v1, ", render_type="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_e
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    .line 221
    .line 222
    if-eqz v1, :cond_f

    .line 223
    .line 224
    const-string v1, ", bid_floor="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :cond_f
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    .line 235
    .line 236
    if-eqz v1, :cond_10

    .line 237
    .line 238
    const-string v1, ", no_hb_preload="

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    :cond_10
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    .line 249
    .line 250
    if-eqz v1, :cond_11

    .line 251
    .line 252
    const-string v1, ", sub_ad_type="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :cond_11
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    .line 263
    .line 264
    if-eqz v1, :cond_12

    .line 265
    .line 266
    const-string v1, ", reward_type="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    :cond_12
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    .line 277
    .line 278
    if-eqz v1, :cond_13

    .line 279
    .line 280
    const-string v1, ", order="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    :cond_13
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v1, :cond_14

    .line 293
    .line 294
    const-string v1, ", mask="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_14
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    .line 305
    .line 306
    if-eqz v1, :cond_15

    .line 307
    .line 308
    const-string v1, ", bid_floor_cur="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    :cond_15
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_16

    .line 325
    .line 326
    const-string v1, ", ban_pkg_name="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    :cond_16
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    .line 337
    .line 338
    if-eqz v1, :cond_17

    .line 339
    .line 340
    const-string v1, ", is_pdb="

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    :cond_17
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    .line 351
    .line 352
    if-eqz v1, :cond_18

    .line 353
    .line 354
    const-string v1, ", pdb_priority="

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    :cond_18
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    .line 365
    .line 366
    if-eqz v1, :cond_19

    .line 367
    .line 368
    const-string v1, ", reward_guide_prompt="

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    :cond_19
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 379
    .line 380
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_1a

    .line 385
    .line 386
    const-string v1, ", saas_options="

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    :cond_1a
    const/4 v1, 0x2

    .line 397
    const-string v2, "MediationElement{"

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const/16 v1, 0x7d

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0
.end method
