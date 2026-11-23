.class public Lcom/byazt/tp/BannerExpressVideoView;
.super Lcom/byazt/tp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x7a6
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/tp/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/ouz/NativeExpressVideoView;

    iget-object v1, p0, Lcom/byazt/tp/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/tp/c;->uj:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/tp/c;->n:Lcom/byazt/dj/tt;

    iget-object v4, p0, Lcom/byazt/tp/c;->da:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/tp/c;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/byazt/ouz/NativeExpressVideoView;

    iget-object v1, p0, Lcom/byazt/tp/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/tp/c;->da:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/tp/c;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 4
    new-instance p1, Lcom/byazt/tp/BannerExpressVideoView$1;

    invoke-direct {p1, p0}, Lcom/byazt/tp/BannerExpressVideoView$1;-><init>(Lcom/byazt/tp/BannerExpressVideoView;)V

    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/tp/c;->ve:Lcom/byazt/ouz/NativeExpressView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    iget-object p1, p0, Lcom/byazt/tp/c;->ve:Lcom/byazt/ouz/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic getCurView()Lcom/byazt/ouz/NativeExpressView;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getNextView()Lcom/byazt/ouz/NativeExpressView;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->getNextView()Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/c;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressVideoView;->getVideoModel()Lcom/byazt/ua/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public bridge synthetic n()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setDuration(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/tp/c;->setDuration(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setExpressInteractionListener(Lcom/byazt/ouz/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/tp/c;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setVideoAdListener(Lcom/byazt/ft/ve;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/tp/c;->setVideoAdListener(Lcom/byazt/ft/ve;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic tt()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic uj()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->uj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic ve()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/tp/c;->ve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
