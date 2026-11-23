.class Lorg/webrtc/haima/HmRtcAdapterImpl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$candidate:Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->val$candidate:Lorg/hmwebrtc/IceCandidate;

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
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Received ICE candidate for a non-initialized peer connection."

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 19
    .line 20
    const-string v1, "onRemoteIceCandidate-->peerConnectionClient is null"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2100(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 33
    .line 34
    iget-object v1, v1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "Already Received ICE candidate for peer connection."

    .line 47
    .line 48
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 53
    .line 54
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2100(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 59
    .line 60
    iget-object v1, v1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->addRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "onRemoteIceCandidate-->"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
