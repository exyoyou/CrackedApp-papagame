.class public interface abstract Lorg/hmwebrtc/RtpReceiver$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/RtpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onFirstPacketReceived(Lorg/hmwebrtc/MediaStreamTrack$MediaType;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method
