.class public final enum Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PseudoHeaderName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field private static final PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSEUDO_HEADER_PREFIX:C = ':'

.field private static final PSEUDO_HEADER_PREFIX_BYTE:B = 0x3at

.field public static final enum SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;


# instance fields
.field private final requestOnly:Z

.field private final value:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 2
    .line 3
    const-string v1, "METHOD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, ":method"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 13
    .line 14
    new-instance v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 15
    .line 16
    const-string v3, "SCHEME"

    .line 17
    .line 18
    const-string v5, ":scheme"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 24
    .line 25
    new-instance v3, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 26
    .line 27
    const-string v5, ":authority"

    .line 28
    .line 29
    const-string v6, "AUTHORITY"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v3, v6, v7, v5, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 36
    .line 37
    new-instance v5, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 38
    .line 39
    const-string v6, ":path"

    .line 40
    .line 41
    const-string v8, "PATH"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v5, v8, v9, v6, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 48
    .line 49
    new-instance v6, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 50
    .line 51
    const-string v8, ":status"

    .line 52
    .line 53
    const-string v10, "STATUS"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8, v2}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    new-array v8, v8, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 63
    .line 64
    aput-object v0, v8, v2

    .line 65
    .line 66
    aput-object v1, v8, v4

    .line 67
    .line 68
    aput-object v3, v8, v7

    .line 69
    .line 70
    aput-object v5, v8, v9

    .line 71
    .line 72
    aput-object v6, v8, v11

    .line 73
    .line 74
    sput-object v8, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->$VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 75
    .line 76
    new-instance v0, Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 77
    .line 78
    invoke-direct {v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 82
    .line 83
    invoke-static {}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->values()[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    array-length v1, v0

    .line 88
    :goto_0
    if-ge v2, v1, :cond_0

    .line 89
    .line 90
    aget-object v3, v0, v2

    .line 91
    .line 92
    sget-object v4, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 93
    .line 94
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value:Lio/netty/util/AsciiString;

    .line 9
    .line 10
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->requestOnly:Z

    .line 11
    .line 12
    return-void
.end method

.method public static getPseudoHeader(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 8
    .line 9
    return-object p0
.end method

.method public static hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Lio/netty/util/AsciiString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x3a

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lio/netty/util/AsciiString;

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lio/netty/util/AsciiString;->byteAt(I)B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-ne p0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-ne p0, v2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_1
    return v1
.end method

.method public static isPseudoHeader(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->$VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public isRequestOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->requestOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public value()Lio/netty/util/AsciiString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    return-object v0
.end method
