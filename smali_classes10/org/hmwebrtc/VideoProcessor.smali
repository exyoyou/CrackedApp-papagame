.class public interface abstract Lorg/hmwebrtc/VideoProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CapturerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;
    }
.end annotation


# virtual methods
.method public abstract onFrameCaptured(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;)V
.end method

.method public abstract setSink(Lorg/hmwebrtc/VideoSink;)V
    .param p1    # Lorg/hmwebrtc/VideoSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
