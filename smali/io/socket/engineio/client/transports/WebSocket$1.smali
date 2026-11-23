.class Lio/socket/engineio/client/transports/WebSocket$1;
.super Lokhttp3/WebSocketListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/WebSocket;

.field final synthetic val$self:Lio/socket/engineio/client/transports/WebSocket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/transports/WebSocket$1;->this$0:Lio/socket/engineio/client/transports/WebSocket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/transports/WebSocket$1;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    .line 4
    .line 5
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lio/socket/engineio/client/transports/WebSocket$1$4;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lio/socket/engineio/client/transports/WebSocket$1$4;-><init>(Lio/socket/engineio/client/transports/WebSocket$1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    .line 1
    instance-of p1, p2, Ljava/lang/Exception;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lio/socket/engineio/client/transports/WebSocket$1$5;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lio/socket/engineio/client/transports/WebSocket$1$5;-><init>(Lio/socket/engineio/client/transports/WebSocket$1;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Lio/socket/engineio/client/transports/WebSocket$1$2;

    invoke-direct {p1, p0, p2}, Lio/socket/engineio/client/transports/WebSocket$1$2;-><init>(Lio/socket/engineio/client/transports/WebSocket$1;Ljava/lang/String;)V

    invoke-static {p1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lio/socket/engineio/client/transports/WebSocket$1$3;

    invoke-direct {p1, p0, p2}, Lio/socket/engineio/client/transports/WebSocket$1$3;-><init>(Lio/socket/engineio/client/transports/WebSocket$1;Lokio/ByteString;)V

    invoke-static {p1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lio/socket/engineio/client/transports/WebSocket$1$1;

    .line 10
    .line 11
    invoke-direct {p2, p0, p1}, Lio/socket/engineio/client/transports/WebSocket$1$1;-><init>(Lio/socket/engineio/client/transports/WebSocket$1;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
