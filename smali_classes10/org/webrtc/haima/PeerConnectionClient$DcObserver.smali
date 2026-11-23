.class Lorg/webrtc/haima/PeerConnectionClient$DcObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/DataChannel$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onMessage$1(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onStateChange$4()V

    return-void
.end method

.method public static synthetic c(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onMessage$2([B)V

    return-void
.end method

.method public static synthetic d(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onStateChange$5()V

    return-void
.end method

.method public static synthetic e(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onMessage$0([B)V

    return-void
.end method

.method public static synthetic f(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->lambda$onStateChange$3()V

    return-void
.end method

.method private synthetic lambda$onMessage$0([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onMessage([BLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onMessage$1(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onX86DataChannelPong(Ljava/lang/String;JLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onMessage$2([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onDcJsonMessage([BLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onStateChange$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onX86DataChannelClose(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onStateChange$4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onX86DataChannelOpen(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onStateChange$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onX86DataChannelClose(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onBufferedAmountChange(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "DataChannel: onBufferedAmountChange: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 25
    .line 26
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",l:"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {v1, p1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_COMM_HEADER:[B

    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 30
    .line 31
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lorg/webrtc/haima/g0;

    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/g0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "dataStr:"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "pong:"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 86
    .line 87
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Lorg/webrtc/haima/h0;

    .line 92
    .line 93
    invoke-direct {v3, p0, p1, v0, v1}, Lorg/webrtc/haima/h0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;Ljava/lang/String;J)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$4200(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 107
    .line 108
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Lorg/webrtc/haima/i0;

    .line 113
    .line 114
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/i0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const-string v0, "BitrateModifiedTo:"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method public onStateChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lorg/webrtc/haima/d0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/webrtc/haima/d0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "DataChannel: onStateChange: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 39
    .line 40
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 59
    .line 60
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/16 v1, 0x33d2

    .line 73
    .line 74
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lorg/hmwebrtc/DataChannel$State;->OPEN:Lorg/hmwebrtc/DataChannel$State;

    .line 78
    .line 79
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 80
    .line 81
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v0, v1, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 92
    .line 93
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lorg/webrtc/haima/e0;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lorg/webrtc/haima/e0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lorg/hmwebrtc/DataChannel$State;->CLOSING:Lorg/hmwebrtc/DataChannel$State;

    .line 107
    .line 108
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 109
    .line 110
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-ne v0, v1, :cond_2

    .line 119
    .line 120
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 121
    .line 122
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lorg/webrtc/haima/f0;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lorg/webrtc/haima/f0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onWritableState(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onWritableState writable:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 26
    .line 27
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$4300(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$4400(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/HaimaDataChannel$Listener;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    const/4 v3, -0x1

    .line 45
    :try_start_1
    invoke-interface {v0, v3, p1, v1, v2}, Lorg/webrtc/haima/HaimaDataChannel$Listener;->onStateChange(IIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_0
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw v0
.end method
