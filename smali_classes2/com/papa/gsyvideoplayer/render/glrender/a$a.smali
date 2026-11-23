.class Lcom/papa/gsyvideoplayer/render/glrender/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/render/glrender/a;->m(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/Surface;

.field final synthetic c:Lcom/papa/gsyvideoplayer/render/glrender/a;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/render/glrender/a;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$a;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$a;->b:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$a;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/render/glrender/a;->c:Lw7/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$a;->b:Landroid/view/Surface;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lw7/a;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
