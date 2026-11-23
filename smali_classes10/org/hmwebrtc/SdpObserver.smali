.class public interface abstract Lorg/hmwebrtc/SdpObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCreateFailure(Ljava/lang/String;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract onCreateSuccess(Lorg/hmwebrtc/SessionDescription;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract onSetFailure(Ljava/lang/String;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract onSetSuccess()V
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method
