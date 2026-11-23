.class Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalV2ReleaseRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field private wsSocket:Lorg/webrtc/haima/WebSocketRTCClient;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;->wsSocket:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;->wsSocket:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/WebSocketRTCClient;->disconnect()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;->wsSocket:Lorg/webrtc/haima/WebSocketRTCClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->myself:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Exception, call: SignalV2ReleaseRunnable, "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method
