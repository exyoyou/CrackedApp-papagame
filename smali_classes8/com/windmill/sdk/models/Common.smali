.class public final Lcom/windmill/sdk/models/Common;
.super Lcom/czhj/wire/AndroidMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/Common$ProtoAdapter_Common;,
        Lcom/windmill/sdk/models/Common$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/windmill/sdk/models/Common;",
        "Lcom/windmill/sdk/models/Common$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/windmill/sdk/models/Common;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/windmill/sdk/models/Common;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

.field public static final DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_LOG_ENC:Ljava/lang/Boolean;

.field public static final DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

.field public static final DEFAULT_READY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final configRefresh:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final dclog_blacklist:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final disable_up_location:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xb
    .end annotation
.end field

.field public final enable_debug_level:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x7
    .end annotation
.end field

.field public final endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.windmill.sdk.models.CommonEndpointsConfig#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final is_gdpr_region:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x3
    .end annotation
.end field

.field public final load_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final log_enc:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xc
    .end annotation
.end field

.field public final max_send_log_records:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final ready_expire_timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final send_log_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x5
    .end annotation
.end field

.field public final tracking_expiration_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final tracking_retry_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/Common$ProtoAdapter_Common;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/models/Common$ProtoAdapter_Common;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/windmill/sdk/models/Common;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sput-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    sput-object v1, Lcom/windmill/sdk/models/Common;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    .line 24
    .line 25
    const/16 v2, 0x64

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lcom/windmill/sdk/models/Common;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sput-object v2, Lcom/windmill/sdk/models/Common;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    .line 39
    .line 40
    sput-object v1, Lcom/windmill/sdk/models/Common;->DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

    .line 41
    .line 42
    const/16 v2, 0x384

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sput-object v2, Lcom/windmill/sdk/models/Common;->DEFAULT_READY_EXPIRE_TIMESTAMP:Ljava/lang/Integer;

    .line 49
    .line 50
    sput-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

    .line 51
    .line 52
    sput-object v1, Lcom/windmill/sdk/models/Common;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    .line 53
    .line 54
    sput-object v1, Lcom/windmill/sdk/models/Common;->DEFAULT_LOG_ENC:Ljava/lang/Boolean;

    .line 55
    .line 56
    sput-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    .line 57
    .line 58
    sput-object v0, Lcom/windmill/sdk/models/Common;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/windmill/sdk/models/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 15
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
            0x0
        }
        names = {
            "endpoints",
            "configRefresh",
            "is_gdpr_region",
            "max_send_log_records",
            "send_log_interval",
            "dclog_blacklist",
            "enable_debug_level",
            "ready_expire_timestamp",
            "load_interval",
            "disable_up_location",
            "log_enc",
            "tracking_expiration_time",
            "tracking_retry_interval"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/CommonEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v14, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    move-object v0, p0

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

    invoke-direct/range {v0 .. v14}, Lcom/windmill/sdk/models/Common;-><init>(Lcom/windmill/sdk/models/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/windmill/sdk/models/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V
    .locals 1
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
            0x0
        }
        names = {
            "endpoints",
            "configRefresh",
            "is_gdpr_region",
            "max_send_log_records",
            "send_log_interval",
            "dclog_blacklist",
            "enable_debug_level",
            "ready_expire_timestamp",
            "load_interval",
            "disable_up_location",
            "log_enc",
            "tracking_expiration_time",
            "tracking_retry_interval",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/CommonEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 4
    iput-object p2, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

    .line 6
    iput-object p4, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    const-string p1, "dclog_blacklist"

    .line 8
    invoke-static {p1, p6}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 9
    iput-object p7, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 11
    iput-object p9, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    .line 12
    iput-object p10, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 13
    iput-object p11, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    .line 14
    iput-object p12, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 15
    iput-object p13, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

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
    instance-of v1, p1, Lcom/windmill/sdk/models/Common;

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
    check-cast p1, Lcom/windmill/sdk/models/Common;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_c

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/windmill/sdk/models/CommonEndpointsConfig;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x25

    .line 89
    .line 90
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 169
    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    :cond_b
    add-int/2addr v0, v2

    .line 177
    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    .line 178
    .line 179
    :cond_c
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Common;->newBuilder()Lcom/windmill/sdk/models/Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/windmill/sdk/models/Common$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/Common$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/Common$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->configRefresh:Ljava/lang/Integer;

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->max_send_log_records:Ljava/lang/Integer;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->send_log_interval:Ljava/lang/Integer;

    const-string v1, "dclog_blacklist"

    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->dclog_blacklist:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->enable_debug_level:Ljava/lang/Boolean;

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->load_interval:Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->disable_up_location:Ljava/lang/Boolean;

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->log_enc:Ljava/lang/Boolean;

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/windmill/sdk/models/Common$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    .line 16
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
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ", endpoints="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, ", configRefresh="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, ", is_gdpr_region="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->is_gdpr_region:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string v1, ", max_send_log_records="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const-string v1, ", send_log_interval="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    const-string v1, ", dclog_blacklist="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const-string v1, ", enable_debug_level="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    const-string v1, ", ready_expire_timestamp="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    const-string v1, ", load_interval="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    const-string v1, ", disable_up_location="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    .line 151
    .line 152
    if-eqz v1, :cond_a

    .line 153
    .line 154
    const-string v1, ", log_enc="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 165
    .line 166
    if-eqz v1, :cond_b

    .line 167
    .line 168
    const-string v1, ", tracking_expiration_time="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_b
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 179
    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    const-string v1, ", tracking_retry_interval="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_c
    const/4 v1, 0x2

    .line 193
    const-string v2, "Common{"

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v1, 0x7d

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method
