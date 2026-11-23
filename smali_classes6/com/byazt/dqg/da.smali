.class public Lcom/byazt/dqg/da;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x48
    }
.end annotation


# instance fields
.field public m:Lcom/byazt/msx/FullSwiperView;

.field public yp:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->sp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    new-instance v0, Lcom/byazt/msx/FullSwiperView;

    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Lcom/byazt/msx/FullSwiperView;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/msx/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    invoke-virtual {v0, p1}, Lcom/byazt/msx/FullSwiperView;->c(Ljava/util/List;)Lcom/byazt/msx/FullSwiperView;

    move-result-object p1

    iget v0, p0, Lcom/byazt/dqg/da;->yp:F

    .line 8
    invoke-virtual {p1, v0}, Lcom/byazt/msx/FullSwiperView;->c(F)Lcom/byazt/msx/FullSwiperView;

    move-result-object p1

    iget v0, p0, Lcom/byazt/dqg/da;->z:F

    .line 9
    invoke-virtual {p1, v0}, Lcom/byazt/msx/FullSwiperView;->tt(F)Lcom/byazt/msx/FullSwiperView;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 10
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/msx/FullSwiperView;->c(Ljava/lang/String;)Lcom/byazt/msx/FullSwiperView;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/byazt/msx/FullSwiperView;->c()V

    .line 12
    iget-object p1, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c([F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget v0, p1, v0

    iput v0, p0, Lcom/byazt/dqg/da;->yp:F

    const/4 v0, 0x1

    .line 2
    aget p1, p1, v0

    iput p1, p0, Lcom/byazt/dqg/da;->z:F

    return-void
.end method

.method public da()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->da()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->uj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/da;->m:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperView;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
