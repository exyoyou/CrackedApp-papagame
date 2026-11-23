.class public final enum Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_ACCEPTED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_REFUSED_IDENTIFIER_REJECTED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_REFUSED_NOT_AUTHORIZED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_REFUSED_SERVER_UNAVAILABLE:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field public static final enum CONNECTION_REFUSED_UNACCEPTABLE_PROTOCOL_VERSION:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field private static final VALUE_TO_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 2
    .line 3
    const-string v1, "CONNECTION_ACCEPTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_ACCEPTED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 10
    .line 11
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 12
    .line 13
    const-string v3, "CONNECTION_REFUSED_UNACCEPTABLE_PROTOCOL_VERSION"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_REFUSED_UNACCEPTABLE_PROTOCOL_VERSION:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 20
    .line 21
    new-instance v3, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 22
    .line 23
    const-string v5, "CONNECTION_REFUSED_IDENTIFIER_REJECTED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_REFUSED_IDENTIFIER_REJECTED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 30
    .line 31
    new-instance v5, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 32
    .line 33
    const-string v7, "CONNECTION_REFUSED_SERVER_UNAVAILABLE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_REFUSED_SERVER_UNAVAILABLE:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 40
    .line 41
    new-instance v7, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 42
    .line 43
    const-string v9, "CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 50
    .line 51
    new-instance v9, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 52
    .line 53
    const-string v11, "CONNECTION_REFUSED_NOT_AUTHORIZED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;-><init>(Ljava/lang/String;IB)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->CONNECTION_REFUSED_NOT_AUTHORIZED:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->$VALUES:[Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 77
    .line 78
    new-instance v0, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->values()[Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    array-length v3, v1

    .line 88
    :goto_0
    if-ge v2, v3, :cond_0

    .line 89
    .line 90
    aget-object v4, v1, v2

    .line 91
    .line 92
    iget-byte v5, v4, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->byteValue:B

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->VALUE_TO_CODE_MAP:Ljava/util/Map;

    .line 109
    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-byte p3, p0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->byteValue:B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(B)Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;
    .locals 3

    .line 2
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->VALUE_TO_CODE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown connect return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->$VALUES:[Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->byteValue:B

    .line 2
    .line 3
    return v0
.end method
