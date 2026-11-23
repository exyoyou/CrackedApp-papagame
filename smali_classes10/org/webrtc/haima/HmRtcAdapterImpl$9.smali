.class Lorg/webrtc/haima/HmRtcAdapterImpl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onRemoteIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;)V
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
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

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
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

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
    const-string v1, "Received ICE candidate removals for a non-initialized peer connection."

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 20
    .line 21
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->removeRemoteIceCandidates([Lorg/hmwebrtc/IceCandidate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "onRemoteIceCandidateRemoved-->"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
