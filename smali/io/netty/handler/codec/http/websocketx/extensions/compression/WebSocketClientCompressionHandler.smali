.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;
.super Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;
.source "SourceFile"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;->INSTANCE:Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;

    .line 3
    .line 4
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;

    .line 5
    .line 6
    invoke-direct {v1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;-><init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
