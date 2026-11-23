.class public interface abstract Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# virtual methods
.method public abstract getDelayMs()I
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getType()Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;
.end method

.method public abstract setCreatedTime(J)V
.end method
