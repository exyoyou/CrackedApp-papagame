.class Lorg/webrtc/haima/PeerConnectionClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/PeerConnectionClient;-><init>(Landroid/content/Context;Lorg/hmwebrtc/EglBase;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;Lorg/hmwebrtc/log/WebrtcLoggableHelp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$1;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$1;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$1;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->enableUpstream(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$1;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$1;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->enableUpstream(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
