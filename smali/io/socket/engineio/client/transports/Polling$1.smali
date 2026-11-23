.class Lio/socket/engineio/client/transports/Polling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling;->pause(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/Polling;

.field final synthetic val$onPause:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/transports/Polling$1;->val$onPause:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 2
    .line 3
    sget-object v1, Lio/socket/engineio/client/Transport$ReadyState;->PAUSED:Lio/socket/engineio/client/Transport$ReadyState;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/socket/engineio/client/transports/Polling;->access$002(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lio/socket/engineio/client/transports/Polling$1$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lio/socket/engineio/client/transports/Polling$1$1;-><init>(Lio/socket/engineio/client/transports/Polling$1;Lio/socket/engineio/client/transports/Polling;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 14
    .line 15
    invoke-static {v0}, Lio/socket/engineio/client/transports/Polling;->access$300(Lio/socket/engineio/client/transports/Polling;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 22
    .line 23
    iget-boolean v0, v0, Lio/socket/engineio/client/Transport;->writable:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    filled-new-array {v0}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 38
    .line 39
    invoke-static {v3}, Lio/socket/engineio/client/transports/Polling;->access$300(Lio/socket/engineio/client/transports/Polling;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "we are currently polling - waiting to pause"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    aget v3, v2, v0

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    aput v3, v2, v0

    .line 59
    .line 60
    iget-object v3, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 61
    .line 62
    new-instance v4, Lio/socket/engineio/client/transports/Polling$1$2;

    .line 63
    .line 64
    invoke-direct {v4, p0, v2, v1}, Lio/socket/engineio/client/transports/Polling$1$2;-><init>(Lio/socket/engineio/client/transports/Polling$1;[ILjava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    const-string v5, "pollComplete"

    .line 68
    .line 69
    invoke-virtual {v3, v5, v4}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v3, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 73
    .line 74
    iget-boolean v3, v3, Lio/socket/engineio/client/Transport;->writable:Z

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "we are currently writing - waiting to pause"

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    aget v3, v2, v0

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    aput v3, v2, v0

    .line 92
    .line 93
    iget-object v0, p0, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    .line 94
    .line 95
    new-instance v3, Lio/socket/engineio/client/transports/Polling$1$3;

    .line 96
    .line 97
    invoke-direct {v3, p0, v2, v1}, Lio/socket/engineio/client/transports/Polling$1$3;-><init>(Lio/socket/engineio/client/transports/Polling$1;[ILjava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "drain"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v3}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    return-void
.end method
