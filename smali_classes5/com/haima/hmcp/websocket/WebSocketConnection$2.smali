.class Lcom/haima/hmcp/websocket/WebSocketConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$202(Lcom/haima/hmcp/websocket/WebSocketConnection;J)J

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPing()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 25
    .line 26
    const-string v1, "mTimeoutTask"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeout()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-long v3, v3

    .line 49
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", sendPingTime = "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$200(Lcom/haima/hmcp/websocket/WebSocketConnection;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, ", pingTimeout = "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeout()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, ", timeoutCount = "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$2;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 112
    .line 113
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$800(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", hashCode="

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
