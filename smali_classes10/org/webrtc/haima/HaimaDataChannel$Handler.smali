.class public interface abstract Lorg/webrtc/haima/HaimaDataChannel$Handler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HaimaDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# static fields
.field public static final SEND_FLAG_BINARY:I = 0x1

.field public static final SEND_FLAG_ORDERED:I = 0x3

.field public static final SEND_RET_BLOCK:I = 0x1

.field public static final SEND_RET_FAILED:I = -0x1

.field public static final SEND_RET_OK:I


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getId()I
.end method

.method public abstract getMaxBufferSize()J
.end method

.method public abstract isConnected()Z
.end method

.method public abstract sendData([BIII)I
.end method
