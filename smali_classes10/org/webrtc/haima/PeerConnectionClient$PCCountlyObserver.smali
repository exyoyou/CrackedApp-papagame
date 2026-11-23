.class Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;
.super Lorg/hmwebrtc/CountlyObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PCCountlyObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-direct {p0}, Lorg/hmwebrtc/CountlyObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->lambda$onCountlyCallback$0(IJLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCountlyCallback$0(IJLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onCountlyCallback(IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 13
    .line 14
    invoke-static {p2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p4, "onCountlyCallback-->"

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p3, p0, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 40
    .line 41
    invoke-static {p3}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-interface {p2, p1, p3}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method public onCountlyCallback(IJLjava/lang/String;)V
    .locals 8

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
    const-string v2, "onCountlyCallback event:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ",time:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",data:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 42
    .line 43
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v7, Lorg/webrtc/haima/l0;

    .line 48
    .line 49
    move-object v1, v7

    .line 50
    move-object v2, p0

    .line 51
    move v3, p1

    .line 52
    move-wide v4, p2

    .line 53
    move-object v6, p4

    .line 54
    invoke-direct/range {v1 .. v6}, Lorg/webrtc/haima/l0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;IJLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
