.class public Lcom/byazt/zk/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zk/tt;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/zk/tt;

.field public final synthetic ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/byazt/zk/tt;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zk/tt$1;->uj:Lcom/byazt/zk/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zk/tt$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zk/tt$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/zk/tt$1;->ve:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/byazt/zk/tt$1;->uj:Lcom/byazt/zk/tt;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/byazt/zk/tt$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/zk/tt$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/zk/tt$1;->ve:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2, p3, v0, v1, p1}, Lcom/byazt/zk/tt;->c(Lcom/byazt/zk/tt;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/zk/tt$1;->uj:Lcom/byazt/zk/tt;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/zk/tt;->c(Lcom/byazt/zk/tt;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/tt$1;->uj:Lcom/byazt/zk/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zk/tt;->tt(Lcom/byazt/zk/tt;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/zk/tt$1;->uj:Lcom/byazt/zk/tt;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/zk/tt;->ve(Lcom/byazt/zk/tt;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
