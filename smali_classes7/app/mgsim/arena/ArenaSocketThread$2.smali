.class Lapp/mgsim/arena/ArenaSocketThread$2;
.super Lapp/mgsim/arena/CheckThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/ArenaSocketThread;
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
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 2
    .line 3
    invoke-direct {p0}, Lapp/mgsim/arena/CheckThread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public check()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 6
    .line 7
    iget-wide v3, v2, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    .line 8
    .line 9
    sub-long/2addr v0, v3

    .line 10
    const-wide/16 v3, 0x2710

    .line 11
    .line 12
    cmp-long v5, v0, v3

    .line 13
    .line 14
    if-lez v5, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, v2, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public handle()V
    .locals 5

    .line 1
    const-string v0, "ArenaService"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 4
    .line 5
    const-string v2, "---send heart beat to server----"

    .line 6
    .line 7
    invoke-virtual {v1, v0, v2}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    invoke-static {v2, v3}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->ping(J)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "---send heart beat to server exception:"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v0, v1}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 50
    .line 51
    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff01"

    .line 52
    .line 53
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public next()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
