.class Lcom/papa/gsyvideoplayer/utils/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->l(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->m(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 38
    .line 39
    const/16 v1, 0x258

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->n(Lcom/papa/gsyvideoplayer/utils/e;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
