.class final Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/redis/RedisDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToPositiveLongProcessor"
.end annotation


# instance fields
.field private result:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/redis/RedisDecoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public content()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;->result:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public process(B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    iget-wide v1, p0, Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;->result:J

    .line 10
    .line 11
    const-wide/16 v3, 0xa

    .line 12
    .line 13
    mul-long v1, v1, v3

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    int-to-long v3, p1

    .line 17
    add-long/2addr v1, v3

    .line 18
    iput-wide v1, p0, Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;->result:J

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    new-instance v0, Lio/netty/handler/codec/redis/RedisCodecException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "bad byte in number: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lio/netty/handler/codec/redis/RedisCodecException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/netty/handler/codec/redis/RedisDecoder$ToPositiveLongProcessor;->result:J

    .line 4
    .line 5
    return-void
.end method
