.class public interface abstract Lorg/webrtc/haima/HaimaDataChannel$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HaimaDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x0

.field public static final DISCONNECTED:I = 0x1

.field public static final WRITEABLE:I = 0x2


# virtual methods
.method public abstract onReceivedData(I[BII)V
.end method

.method public abstract onSent(JJ)V
.end method

.method public abstract onStateChange(IIJ)V
.end method
