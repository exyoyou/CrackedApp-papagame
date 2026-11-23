.class public final Lcom/windmill/sdk/models/MediationChannel;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/MediationChannel$ProtoAdapter_MediationChannel;,
        Lcom/windmill/sdk/models/MediationChannel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/MediationChannel;",
        "Lcom/windmill/sdk/models/MediationChannel$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/MediationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AD_CLASS:Ljava/lang/String; = ""

.field public static final DEFAULT_AD_EXPIRE_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_AD_INIT_CLASS:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

.field public static final DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER:Ljava/lang/Integer;

.field public static final DEFAULT_CUR:Ljava/lang/String; = ""

.field public static final DEFAULT_ENABLE_CLICK_AUTO_CLOSE:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK:Ljava/lang/Boolean;

.field public static final DEFAULT_FILL_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_IS_CUSTOM:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_READY:Ljava/lang/Integer;

.field public static final DEFAULT_IS_SAAS_ADX:Ljava/lang/Boolean;

.field public static final DEFAULT_MODULE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_RATIO:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final ad_class:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final ad_expire_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final ad_init_class:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final adapter_config:Lcom/windmill/sdk/models/AdapterConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.AdapterConfig#ADAPTER"
        tag = 0x11
    .end annotation
.end field

.field public final channel_id:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final countdown_auto_close_timer:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final cur:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final enable_click_auto_close:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xc
    .end annotation
.end field

.field public final enable_extra_close_callback:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x4
    .end annotation
.end field

.field public final fill_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x8
    .end annotation
.end field

.field public final is_custom:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final is_ready:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0xe
    .end annotation
.end field

.field public final is_saas_adx:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xf
    .end annotation
.end field

.field public final module_name:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final options:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x12
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

.field public final ratio:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0xa
    .end annotation
.end field

.field public final saas_options:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x10
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/MediationChannel$ProtoAdapter_MediationChannel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/MediationChannel$ProtoAdapter_MediationChannel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

    .line 20
    .line 21
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_AD_EXPIRE_TIME:Ljava/lang/Integer;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    sput-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK:Ljava/lang/Boolean;

    .line 26
    .line 27
    sput-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_CUSTOM:Ljava/lang/Boolean;

    .line 28
    .line 29
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_FILL_TYPE:Ljava/lang/Integer;

    .line 30
    .line 31
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_RATIO:Ljava/lang/Integer;

    .line 32
    .line 33
    sput-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_ENABLE_CLICK_AUTO_CLOSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER:Ljava/lang/Integer;

    .line 36
    .line 37
    sput-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_READY:Ljava/lang/Integer;

    .line 38
    .line 39
    sput-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_SAAS_ADX:Ljava/lang/Boolean;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/Map;Lcom/windmill/sdk/models/AdapterConfig;Ljava/util/Map;)V
    .locals 20
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
            0x0
        }
        names = {
            "channel_id",
            "name",
            "ad_expire_time",
            "enable_extra_close_callback",
            "is_custom",
            "ad_init_class",
            "ad_class",
            "fill_type",
            "cur",
            "ratio",
            "module_name",
            "enable_click_auto_close",
            "countdown_auto_close_timer",
            "is_ready",
            "is_saas_adx",
            "saas_options",
            "adapter_config",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/windmill/sdk/models/AdapterConfig;",
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

    .line 1
    sget-object v19, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    invoke-direct/range {v0 .. v19}, Lcom/windmill/sdk/models/MediationChannel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/Map;Lcom/windmill/sdk/models/AdapterConfig;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/Map;Lcom/windmill/sdk/models/AdapterConfig;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V
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
            0x0
        }
        names = {
            "channel_id",
            "name",
            "ad_expire_time",
            "enable_extra_close_callback",
            "is_custom",
            "ad_init_class",
            "ad_class",
            "fill_type",
            "cur",
            "ratio",
            "module_name",
            "enable_click_auto_close",
            "countdown_auto_close_timer",
            "is_ready",
            "is_saas_adx",
            "saas_options",
            "adapter_config",
            "options",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/windmill/sdk/models/AdapterConfig;",
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
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v2, p19

    invoke-direct {p0, v1, v2}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    const-string v1, "saas_options"

    move-object/from16 v2, p16

    .line 18
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    const-string v1, "options"

    move-object/from16 v2, p18

    .line 20
    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

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
    instance-of v1, p1, Lcom/windmill/sdk/models/MediationChannel;

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
    check-cast p1, Lcom/windmill/sdk/models/MediationChannel;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 148
    .line 149
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    .line 178
    .line 179
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    .line 200
    .line 201
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_2

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_10

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    goto :goto_a

    .line 155
    :cond_a
    const/4 v1, 0x0

    .line 156
    :goto_a
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x25

    .line 158
    .line 159
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    goto :goto_b

    .line 168
    :cond_b
    const/4 v1, 0x0

    .line 169
    :goto_b
    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x25

    .line 171
    .line 172
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_c

    .line 181
    :cond_c
    const/4 v1, 0x0

    .line 182
    :goto_c
    add-int/2addr v0, v1

    .line 183
    mul-int/lit8 v0, v0, 0x25

    .line 184
    .line 185
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    .line 186
    .line 187
    if-eqz v1, :cond_d

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    goto :goto_d

    .line 194
    :cond_d
    const/4 v1, 0x0

    .line 195
    :goto_d
    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v0, v0, 0x25

    .line 197
    .line 198
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    .line 199
    .line 200
    if-eqz v1, :cond_e

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    goto :goto_e

    .line 207
    :cond_e
    const/4 v1, 0x0

    .line 208
    :goto_e
    add-int/2addr v0, v1

    .line 209
    mul-int/lit8 v0, v0, 0x25

    .line 210
    .line 211
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    .line 212
    .line 213
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/2addr v0, v1

    .line 218
    mul-int/lit8 v0, v0, 0x25

    .line 219
    .line 220
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    .line 221
    .line 222
    if-eqz v1, :cond_f

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/windmill/sdk/models/AdapterConfig;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    :cond_f
    add-int/2addr v0, v2

    .line 229
    mul-int/lit8 v0, v0, 0x25

    .line 230
    .line 231
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    add-int/2addr v0, v1

    .line 238
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 239
    .line 240
    :cond_10
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/MediationChannel;->newBuilder()Lcom/windmill/sdk/models/MediationChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/MediationChannel$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/MediationChannel$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->channel_id:Ljava/lang/Integer;

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->name:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_expire_time:Ljava/lang/Integer;

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_custom:Ljava/lang/Boolean;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_init_class:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_class:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->fill_type:Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->cur:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ratio:Ljava/lang/Integer;

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->module_name:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_ready:Ljava/lang/Integer;

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_saas_adx:Ljava/lang/Boolean;

    const-string v1, "saas_options"

    .line 18
    iget-object v2, p0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->saas_options:Ljava/util/Map;

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    const-string v1, "options"

    .line 20
    iget-object v2, p0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->options:Ljava/util/Map;

    .line 21
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
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ", channel_id="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, ", name="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, ", ad_expire_time="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string v1, ", enable_extra_close_callback="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const-string v1, ", is_custom="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    const-string v1, ", ad_init_class="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    const-string v1, ", ad_class="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    const-string v1, ", fill_type="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    const-string v1, ", cur="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    .line 133
    .line 134
    if-eqz v1, :cond_9

    .line 135
    .line 136
    const-string v1, ", ratio="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    const-string v1, ", module_name="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->module_name:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 161
    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    const-string v1, ", enable_click_auto_close="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :cond_b
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 175
    .line 176
    if-eqz v1, :cond_c

    .line 177
    .line 178
    const-string v1, ", countdown_auto_close_timer="

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :cond_c
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    .line 189
    .line 190
    if-eqz v1, :cond_d

    .line 191
    .line 192
    const-string v1, ", is_ready="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_d
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    .line 203
    .line 204
    if-eqz v1, :cond_e

    .line 205
    .line 206
    const-string v1, ", is_saas_adx="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_e
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_f

    .line 223
    .line 224
    const-string v1, ", saas_options="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :cond_f
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    .line 235
    .line 236
    if-eqz v1, :cond_10

    .line 237
    .line 238
    const-string v1, ", adapter_config="

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    :cond_10
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    .line 249
    .line 250
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_11

    .line 255
    .line 256
    const-string v1, ", options="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_11
    const/4 v1, 0x2

    .line 267
    const-string v2, "MediationChannel{"

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const/16 v1, 0x7d

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0
.end method
