.class Lio/netty/handler/ssl/SslClientHelloHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$finalClientHello:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    .line 4
    .line 5
    iput-object p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$000(Lio/netty/buffer/ByteBuf;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 13
    .line 14
    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 29
    .line 30
    new-instance v2, Lio/netty/handler/codec/DecoderException;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 41
    .line 42
    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 46
    .line 47
    invoke-static {p1}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 59
    .line 60
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 66
    .line 67
    invoke-static {v1}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 74
    .line 75
    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 79
    .line 80
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 81
    .line 82
    .line 83
    :cond_1
    throw p1
.end method
