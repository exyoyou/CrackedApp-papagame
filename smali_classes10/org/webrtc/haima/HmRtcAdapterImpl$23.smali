.class Lorg/webrtc/haima/HmRtcAdapterImpl$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmRtcCommandFilter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBinMessage([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onRemoteBinMessage([B)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onInputTransportState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onRemoteInputTransportState(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onTextMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onRemoteTextMessage(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
