.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field final synthetic e:Landroid/widget/FrameLayout;

.field final synthetic f:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->f:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->e:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->f:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->r()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->f:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->E()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->e:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
