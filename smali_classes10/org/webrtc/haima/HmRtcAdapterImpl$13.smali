.class Lorg/webrtc/haima/HmRtcAdapterImpl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onLocalDescriptionSet(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$sdp:Lorg/hmwebrtc/SessionDescription;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->val$sdp:Lorg/hmwebrtc/SessionDescription;

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
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/beans/GamePlatformType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2300(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 21
    .line 22
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 29
    .line 30
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->sendAnswer(Lorg/hmwebrtc/SessionDescription;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 41
    .line 42
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 49
    .line 50
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->sendAnswerSdp(Lorg/hmwebrtc/SessionDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$13;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "sendAnswerSdp-->"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method
