.class public interface abstract Lcom/haima/hmcp/rtmp/widgets/IRenderView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IRenderViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;,
        Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
    }
.end annotation


# static fields
.field public static final AR_16_9_FIT_PARENT:I = 0x4

.field public static final AR_4_3_FIT_PARENT:I = 0x5

.field public static final AR_ASPECT_FILL_PARENT:I = 0x1

.field public static final AR_ASPECT_FIT_PARENT:I = 0x0

.field public static final AR_ASPECT_WRAP_CONTENT:I = 0x2

.field public static final AR_MATCH_PARENT:I = 0x3


# virtual methods
.method public abstract addRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
.end method

.method public abstract removeRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestLayout()V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setVideoSampleAspectRatio(II)V
.end method

.method public abstract setVideoSize(II)V
.end method

.method public abstract shouldWaitForResize()Z
.end method
