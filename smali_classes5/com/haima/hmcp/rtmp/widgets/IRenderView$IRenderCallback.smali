.class public interface abstract Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;III)V
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceCreated(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;II)V
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceDestroyed(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;)V
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
