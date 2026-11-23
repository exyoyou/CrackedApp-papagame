.class Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/EglRenderer$FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

.field final synthetic val$callback:Lcom/haima/hmcp/listeners/FrameCaptureCallback;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;->this$0:Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;->val$callback:Lcom/haima/hmcp/listeners/FrameCaptureCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFrame(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;->val$callback:Lcom/haima/hmcp/listeners/FrameCaptureCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/FrameCaptureCallback;->onFrameCapture(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
