.class Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/HmRtcAdapterImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "first video frame will be rendering"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Frame Resolution Changed:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "x"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p3, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 34
    .line 35
    invoke-static {p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    int-to-long v0, p1

    .line 40
    invoke-virtual {p3, v0, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameWidthReceived(J)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 44
    .line 45
    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    int-to-long p2, p2

    .line 50
    invoke-virtual {p1, p2, p3}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameHeightReceived(J)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 54
    .line 55
    invoke-static {p1, v0, v1, p2, p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$400(Lorg/webrtc/haima/HmRtcAdapterImpl;JJ)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
