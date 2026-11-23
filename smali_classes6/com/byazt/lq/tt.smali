.class public abstract Lcom/byazt/lq/tt;
.super Lcom/byazt/nc/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/nc/u;


# direct methods
.method public constructor <init>(Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/da;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "3-BaseFeedAd:140016:view="

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "wzj"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAppCommentNum()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAppScore()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAppScore()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAppSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAppSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getButtonText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getComplianceInfo()Lcom/byazt/nc/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getComplianceInfo()Lcom/byazt/nc/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDownloadStatusController()Lcom/byazt/nc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIcon()Lcom/byazt/nc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nc/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getImageMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeAd()Lcom/byazt/nc/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getSource()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoCoverImage()Lcom/byazt/nc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/nc/x;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->render()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExpressRenderListener(Lcom/byazt/lsp/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setExpressRenderListener(Lcom/byazt/lsp/ve;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setPrice(Ljava/lang/Double;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/tt;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->win(Ljava/lang/Double;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
