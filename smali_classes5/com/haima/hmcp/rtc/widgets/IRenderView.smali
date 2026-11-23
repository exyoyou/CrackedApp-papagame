.class public interface abstract Lcom/haima/hmcp/rtc/widgets/IRenderView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IRenderViewBase;


# virtual methods
.method public abstract enablePandaMode(Z)Z
.end method

.method public abstract frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V
.end method

.method public abstract setVideoSize(II)V
.end method
