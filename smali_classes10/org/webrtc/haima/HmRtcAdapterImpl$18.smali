.class Lorg/webrtc/haima/HmRtcAdapterImpl$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onWebSocketConnected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$iceServers:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$18;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$18;->val$iceServers:Ljava/util/List;

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
    .locals 2

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "creating PeerConnection by SignalV2"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$18;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$18;->val$iceServers:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1700(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
