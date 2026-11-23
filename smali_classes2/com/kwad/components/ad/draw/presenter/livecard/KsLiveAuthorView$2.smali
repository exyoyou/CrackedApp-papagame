.class final Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eN:Landroid/animation/Animator;

.field final synthetic eO:Landroid/animation/Animator;

.field final synthetic eP:Landroid/animation/Animator;

.field final synthetic eQ:Landroid/animation/Animator;

.field final synthetic eR:Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eR:Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eN:Landroid/animation/Animator;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eO:Landroid/animation/Animator;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eP:Landroid/animation/Animator;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eQ:Landroid/animation/Animator;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Landroid/animation/Animator;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eN:Landroid/animation/Animator;

    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eO:Landroid/animation/Animator;

    .line 19
    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eP:Landroid/animation/Animator;

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView$2;->eQ:Landroid/animation/Animator;

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
