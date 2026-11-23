.class public final Lcom/windmill/sdk/models/Android;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/Android$ProtoAdapter_Android;,
        Lcom/windmill/sdk/models/Android$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/Android;",
        "Lcom/windmill/sdk/models/Android$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/Android;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/Android;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DISABLE_BOOT_MARK:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLE_NDK_CRASH:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_REWARD_NDK:Ljava/lang/Boolean;

.field public static final DEFAULT_GM_PRICE_CACHE_SWITCH:Ljava/lang/Integer;

.field public static final DEFAULT_GM_PRICE_PERCENT:Ljava/lang/Integer;

.field public static final DEFAULT_INIT_SYNC_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_OAID_API_IS_DISABLE:Ljava/lang/Boolean;

.field public static final DEFAULT_REPORT_LOG:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public disable_boot_mark:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x6
    .end annotation
.end field

.field public final disable_up_oaid:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public enable_ndk_crash:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final enable_permission:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x3
    .end annotation
.end field

.field public final enable_report_crash:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x4
    .end annotation
.end field

.field public enable_reward_ndk:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x7
    .end annotation
.end field

.field public final gm_price_cache_switch:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field

.field public final gm_price_packages:Ljava/util/List;
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

.field public final gm_price_percent:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final init_sync_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final oaid_api_is_disable:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final quick_app_schema:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final redirect_link_collection_ratio:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xf
    .end annotation
.end field

.field public final redirect_link_collection_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xe
    .end annotation
.end field

.field public final report_log:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/Android$ProtoAdapter_Android;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/Android$ProtoAdapter_Android;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/Android;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sput-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    .line 20
    .line 21
    sput-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

    .line 26
    .line 27
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

    .line 28
    .line 29
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_OAID_API_IS_DISABLE:Ljava/lang/Boolean;

    .line 30
    .line 31
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_DISABLE_BOOT_MARK:Ljava/lang/Boolean;

    .line 32
    .line 33
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_REWARD_NDK:Ljava/lang/Boolean;

    .line 34
    .line 35
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_NDK_CRASH:Ljava/lang/Boolean;

    .line 36
    .line 37
    const/16 v1, 0x7d0

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lcom/windmill/sdk/models/Android;->DEFAULT_INIT_SYNC_TIMEOUT:Ljava/lang/Integer;

    .line 44
    .line 45
    sput-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_GM_PRICE_PERCENT:Ljava/lang/Integer;

    .line 46
    .line 47
    sput-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_GM_PRICE_CACHE_SWITCH:Ljava/lang/Integer;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 17
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
            0x0
        }
        names = {
            "report_log",
            "disable_up_oaid",
            "enable_permission",
            "enable_report_crash",
            "oaid_api_is_disable",
            "disable_boot_mark",
            "enable_reward_ndk",
            "enable_ndk_crash",
            "init_sync_timeout",
            "gm_price_percent",
            "gm_price_packages",
            "gm_price_cache_switch",
            "quick_app_schema",
            "redirect_link_collection_switch",
            "redirect_link_collection_ratio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
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

    .line 1
    sget-object v16, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    invoke-direct/range {v0 .. v16}, Lcom/windmill/sdk/models/Android;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V
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
            0x0
        }
        names = {
            "report_log",
            "disable_up_oaid",
            "enable_permission",
            "enable_report_crash",
            "oaid_api_is_disable",
            "disable_boot_mark",
            "enable_reward_ndk",
            "enable_ndk_crash",
            "init_sync_timeout",
            "gm_price_percent",
            "gm_price_packages",
            "gm_price_cache_switch",
            "quick_app_schema",
            "redirect_link_collection_switch",
            "redirect_link_collection_ratio",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->enable_reward_ndk:Ljava/lang/Boolean;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->enable_ndk_crash:Ljava/lang/Boolean;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    const-string v1, "gm_price_packages"

    move-object v2, p11

    .line 13
    invoke-static {v1, p11}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    const-string v1, "quick_app_schema"

    move-object/from16 v2, p13

    .line 15
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

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
    instance-of v1, p1, Lcom/windmill/sdk/models/Android;

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
    check-cast p1, Lcom/windmill/sdk/models/Android;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_reward_ndk:Ljava/lang/Boolean;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->enable_reward_ndk:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_ndk_crash:Ljava/lang/Boolean;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->enable_ndk_crash:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 148
    .line 149
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    .line 157
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_2

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_d

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_3
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x25

    .line 67
    .line 68
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/4 v1, 0x0

    .line 78
    :goto_4
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x25

    .line 80
    .line 81
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    const/4 v1, 0x0

    .line 91
    :goto_5
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x25

    .line 93
    .line 94
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_reward_ndk:Ljava/lang/Boolean;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    goto :goto_6

    .line 103
    :cond_6
    const/4 v1, 0x0

    .line 104
    :goto_6
    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x25

    .line 106
    .line 107
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_ndk_crash:Ljava/lang/Boolean;

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    goto :goto_7

    .line 116
    :cond_7
    const/4 v1, 0x0

    .line 117
    :goto_7
    add-int/2addr v0, v1

    .line 118
    mul-int/lit8 v0, v0, 0x25

    .line 119
    .line 120
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    goto :goto_8

    .line 129
    :cond_8
    const/4 v1, 0x0

    .line 130
    :goto_8
    add-int/2addr v0, v1

    .line 131
    mul-int/lit8 v0, v0, 0x25

    .line 132
    .line 133
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_9

    .line 142
    :cond_9
    const/4 v1, 0x0

    .line 143
    :goto_9
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x25

    .line 145
    .line 146
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    mul-int/lit8 v0, v0, 0x25

    .line 154
    .line 155
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    mul-int/lit8 v0, v0, 0x25

    .line 176
    .line 177
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 178
    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    goto :goto_b

    .line 186
    :cond_b
    const/4 v1, 0x0

    .line 187
    :goto_b
    add-int/2addr v0, v1

    .line 188
    mul-int/lit8 v0, v0, 0x25

    .line 189
    .line 190
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    :cond_c
    add-int/2addr v0, v2

    .line 199
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 200
    .line 201
    :cond_d
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Android;->newBuilder()Lcom/windmill/sdk/models/Android$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/Android$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/Android$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/Android$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->report_log:Ljava/lang/Integer;

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->disable_up_oaid:Ljava/lang/Integer;

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_permission:Ljava/lang/Boolean;

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_report_crash:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    const-string v1, "gm_price_packages"

    .line 9
    iget-object v2, p0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_packages:Ljava/util/List;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_cache_switch:Ljava/lang/Integer;

    const-string v1, "quick_app_schema"

    .line 11
    iget-object v2, p0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->quick_app_schema:Ljava/util/List;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 14
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
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ", report_log="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, ", disable_up_oaid="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, ", enable_permission="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string v1, ", enable_report_crash="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const-string v1, ", oaid_api_is_disable="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    const-string v1, ", disable_boot_mark="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    const-string v1, ", gm_price_percent="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    const-string v1, ", gm_price_packages="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    const-string v1, ", gm_price_cache_switch="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    const-string v1, ", quick_app_schema="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 155
    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    const-string v1, ", redirect_link_collection_switch="

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 169
    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    const-string v1, ", redirect_link_collection_ratio="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :cond_b
    const/4 v1, 0x2

    .line 183
    const-string v2, "Android{"

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/16 v1, 0x7d

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0
.end method
