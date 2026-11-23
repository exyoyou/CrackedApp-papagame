.class Lio/netty/channel/pool/FixedChannelPool$1$1;
.super Ljava/util/concurrent/TimeoutException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool$1;->onTimeout(Lio/netty/channel/pool/FixedChannelPool$AcquireTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/pool/FixedChannelPool$1;


# direct methods
.method constructor <init>(Lio/netty/channel/pool/FixedChannelPool$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$1$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
