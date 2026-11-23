.class Lorg/webrtc/haima/HmRtcAdapterImpl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$candidates:[Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;[Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->sendLocalIceCandidateRemovals([Lorg/hmwebrtc/IceCandidate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$15;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "sendLocalIceCandidateRemovals-->"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method
