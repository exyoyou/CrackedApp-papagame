.class public interface abstract Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Output"
.end annotation


# virtual methods
.method public abstract dropFrame(I)V
.end method

.method public abstract renderFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
.end method
