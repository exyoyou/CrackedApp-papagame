.class Lcom/papa/gsyvideoplayer/utils/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->b:Lcom/papa/gsyvideoplayer/utils/i;

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
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->o(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 20
    .line 21
    const/16 v1, 0x258

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->p(Lcom/papa/gsyvideoplayer/utils/i;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
