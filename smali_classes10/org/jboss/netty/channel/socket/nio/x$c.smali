.class Lorg/jboss/netty/channel/socket/nio/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/x$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:[Ljava/nio/ByteBuffer;

.field private final b:I

.field private c:J

.field private final d:I


# direct methods
.method constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->b:I

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    aget-object v3, p1, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v2, v3

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->d:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->b:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->d:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public c(Ljava/nio/channels/WritableByteChannel;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/nio/channels/GatheringByteChannel;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 14
    .line 15
    add-long/2addr v2, v0

    .line 16
    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    aget-object v4, v0, v2

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/2addr v3, v4

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 46
    .line 47
    int-to-long v2, v3

    .line 48
    add-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 50
    .line 51
    return-wide v2
.end method

.method public d(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v4, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/2addr v3, v4

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    iget-wide p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 28
    .line 29
    int-to-long v0, v3

    .line 30
    add-long/2addr p1, v0

    .line 31
    iput-wide p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 32
    .line 33
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
