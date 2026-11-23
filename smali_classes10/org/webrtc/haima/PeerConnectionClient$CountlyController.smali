.class Lorg/webrtc/haima/PeerConnectionClient$CountlyController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountlyController"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient$CountlyController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->lambda$enableUpstream$0(Z)V

    return-void
.end method

.method private synthetic lambda$enableUpstream$0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->enableUpstreamInternal(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public enableUpstream(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/webrtc/haima/c0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/c0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$CountlyController;Z)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public enableUpstreamInternal(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "enableUpstreamInternal = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 34
    .line 35
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "enable:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "countly_upstream"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
