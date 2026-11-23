.class public interface abstract Lorg/hmwebrtc/RendererCommon$GlDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlDrawer"
.end annotation


# virtual methods
.method public abstract drawOes(I[FIIIIII)V
.end method

.method public abstract drawRgb(I[FIIIIII)V
.end method

.method public abstract drawYuv([I[FIIIIII)V
.end method

.method public abstract getImageAdjustable()Z
.end method

.method public abstract getUnsharpMaskEnabled()Z
.end method

.method public abstract release()V
.end method

.method public abstract setBlackWhiteDisplay(Z)V
.end method

.method public abstract setBrightnessRatio(F)V
.end method

.method public abstract setContrastRatio(F)V
.end method

.method public abstract setImageAdjustable(Z)V
.end method

.method public abstract setSaturationRatio(F)V
.end method

.method public abstract setUnsharpMaskAmount(F)V
.end method

.method public abstract setUnsharpMaskEnabled(Z)V
.end method

.method public abstract setUnsharpMaskThreshold(F)V
.end method
