.class public Lapp/mgsim/arena/ProtobufferDecoder;
.super Lorg/jboss/netty/handler/codec/frame/a;
.source "SourceFile"


# static fields
.field private static final HAS_PARSER:Z

.field private static final TAG:Ljava/lang/String; = "ArenaService"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/google/protobuf/MessageLite;

    .line 3
    .line 4
    const-string v2, "getParserForType"

    .line 5
    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :catchall_0
    sput-boolean v0, Lapp/mgsim/arena/ProtobufferDecoder;->HAS_PARSER:Z

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x4

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->l0()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->p0()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/e;->N(I)Lorg/jboss/netty/buffer/e;

    .line 28
    .line 29
    .line 30
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    sget-boolean v0, Lapp/mgsim/arena/ProtobufferDecoder;->HAS_PARSER:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getParserForType()Lcom/google/protobuf/Parser;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->array()[B

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-interface {v0, p3}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Lcom/papa91/battle/protocol/Response;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->newBuilderForType()Lcom/papa91/battle/protocol/Response$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->array()[B

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v0, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lcom/papa91/battle/protocol/Response$Builder;

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/Response$Builder;->build()Lcom/papa91/battle/protocol/Response;

    .line 73
    .line 74
    .line 75
    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_0
    return-object p3

    .line 77
    :catch_0
    move-exception p3

    .line 78
    :try_start_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    .line 79
    .line 80
    .line 81
    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :catch_1
    return-object p1
.end method
