.class Lapp/mgsim/arena/ArenaSocketThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/mgsim/arena/ArenaSocketThread;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/mgsim/arena/ArenaSocketThread;


# direct methods
.method constructor <init>(Lapp/mgsim/arena/ArenaSocketThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread$1;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lorg/jboss/netty/channel/ChannelHandler;

    .line 3
    .line 4
    new-instance v1, Lapp/mgsim/arena/ProtobufferDecoder;

    .line 5
    .line 6
    invoke-direct {v1}, Lapp/mgsim/arena/ProtobufferDecoder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    new-instance v1, Lapp/mgsim/arena/BattleServiceHandler;

    .line 13
    .line 14
    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$1;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 15
    .line 16
    invoke-static {v2}, Lapp/mgsim/arena/ArenaSocketThread;->access$000(Lapp/mgsim/arena/ArenaSocketThread;)Lapp/mgsim/arena/SocketListener;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Lapp/mgsim/arena/BattleServiceHandler;-><init>(Lapp/mgsim/arena/SocketListener;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Lorg/jboss/netty/channel/s;->S([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/n;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
