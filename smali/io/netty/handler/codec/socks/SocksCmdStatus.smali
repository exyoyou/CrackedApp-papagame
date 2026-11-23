.class public final enum Lio/netty/handler/codec/socks/SocksCmdStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksCmdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum ADDRESS_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum COMMAND_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum FAILURE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum FORBIDDEN:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum HOST_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum NETWORK_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum REFUSED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum SUCCESS:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum TTL_EXPIRED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdStatus;->SUCCESS:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 10
    .line 11
    new-instance v1, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 12
    .line 13
    const-string v3, "FAILURE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lio/netty/handler/codec/socks/SocksCmdStatus;->FAILURE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 20
    .line 21
    new-instance v3, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 22
    .line 23
    const-string v5, "FORBIDDEN"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lio/netty/handler/codec/socks/SocksCmdStatus;->FORBIDDEN:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 30
    .line 31
    new-instance v5, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 32
    .line 33
    const-string v7, "NETWORK_UNREACHABLE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lio/netty/handler/codec/socks/SocksCmdStatus;->NETWORK_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 40
    .line 41
    new-instance v7, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 42
    .line 43
    const-string v9, "HOST_UNREACHABLE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lio/netty/handler/codec/socks/SocksCmdStatus;->HOST_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 50
    .line 51
    new-instance v9, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 52
    .line 53
    const-string v11, "REFUSED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lio/netty/handler/codec/socks/SocksCmdStatus;->REFUSED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 60
    .line 61
    new-instance v11, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 62
    .line 63
    const-string v13, "TTL_EXPIRED"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lio/netty/handler/codec/socks/SocksCmdStatus;->TTL_EXPIRED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 70
    .line 71
    new-instance v13, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 72
    .line 73
    const-string v15, "COMMAND_NOT_SUPPORTED"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lio/netty/handler/codec/socks/SocksCmdStatus;->COMMAND_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 80
    .line 81
    new-instance v15, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 82
    .line 83
    const-string v14, "ADDRESS_NOT_SUPPORTED"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v12}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lio/netty/handler/codec/socks/SocksCmdStatus;->ADDRESS_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 91
    .line 92
    new-instance v14, Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 93
    .line 94
    const/4 v12, -0x1

    .line 95
    const-string v10, "UNASSIGNED"

    .line 96
    .line 97
    const/16 v8, 0x9

    .line 98
    .line 99
    invoke-direct {v14, v10, v8, v12}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    .line 100
    .line 101
    .line 102
    sput-object v14, Lio/netty/handler/codec/socks/SocksCmdStatus;->UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 103
    .line 104
    const/16 v10, 0xa

    .line 105
    .line 106
    new-array v10, v10, [Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 107
    .line 108
    aput-object v0, v10, v2

    .line 109
    .line 110
    aput-object v1, v10, v4

    .line 111
    .line 112
    aput-object v3, v10, v6

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    aput-object v5, v10, v0

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    aput-object v7, v10, v0

    .line 119
    .line 120
    const/4 v0, 0x5

    .line 121
    aput-object v9, v10, v0

    .line 122
    .line 123
    const/4 v0, 0x6

    .line 124
    aput-object v11, v10, v0

    .line 125
    .line 126
    const/4 v0, 0x7

    .line 127
    aput-object v13, v10, v0

    .line 128
    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    aput-object v15, v10, v0

    .line 132
    .line 133
    aput-object v14, v10, v8

    .line 134
    .line 135
    sput-object v10, Lio/netty/handler/codec/socks/SocksCmdStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 136
    .line 137
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
    iput-byte p3, p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    .line 5
    .line 6
    return-void
.end method

.method public static fromByte(B)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/socks/SocksCmdStatus;->valueOf(B)Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static valueOf(B)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 5

    .line 2
    invoke-static {}, Lio/netty/handler/codec/socks/SocksCmdStatus;->values()[Lio/netty/handler/codec/socks/SocksCmdStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-byte v4, v3, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksCmdStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    .line 2
    .line 3
    return v0
.end method
