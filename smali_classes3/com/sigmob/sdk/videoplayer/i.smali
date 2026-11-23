.class public abstract Lcom/sigmob/sdk/videoplayer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Landroid/graphics/SurfaceTexture;

.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field public d:Lcom/sigmob/sdk/videoplayer/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPlayerListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftVolume"
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()V
.end method

.method public abstract g()J
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()J
.end method
