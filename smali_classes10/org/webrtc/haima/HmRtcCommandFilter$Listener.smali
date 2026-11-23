.class public interface abstract Lorg/webrtc/haima/HmRtcCommandFilter$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcCommandFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBinMessage([B)V
.end method

.method public abstract onInputTransportState(I)V
.end method

.method public abstract onTextMessage(Ljava/lang/String;)V
.end method
