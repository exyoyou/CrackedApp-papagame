.class final Lorg/jboss/netty/channel/socket/nio/x$d;
.super Lorg/jboss/netty/channel/socket/nio/x$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private final c:Lorg/jboss/netty/channel/socket/nio/x$e;

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->c:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->c:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    .line 3
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/x;->c(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    .line 25
    .line 26
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    .line 29
    .line 30
    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/x;->d(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v2, v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/x$f;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Lorg/jboss/netty/channel/socket/nio/x$f;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/nio/x;->e(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$f;)Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
